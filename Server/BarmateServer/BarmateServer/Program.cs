using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace BarmateServer
{
    class Program
    {
        private static byte[] _buffer = new byte[1024];
        private static List<Socket> _clientSockets = new List<Socket>();
        private static Socket _serverSocket = new Socket(AddressFamily.InterNetwork,SocketType.Stream, ProtocolType.Tcp);
        private static BarMateDatabaseDataContext db = new BarMateDatabaseDataContext();
        private static string apiKey = "AIzaSyBwuBhSkRpALHU9cVIoNtWn-c6hcMwJiZw";

        static void Main(string[] args)
        {
            Console.Title = "Server";

            setUpServer();
            Console.ReadLine();
        }

        private static void setUpServer()
        {
            Console.WriteLine("Connecting to Database...");
            Console.Write("Database Name: ");
            var query = (from t in db.so_system_parameters select t.parameter);

            foreach (var r in query)
            {
                Console.WriteLine(r);
            }

            IPAddress[] ips = Dns.GetHostEntry(Dns.GetHostName()).AddressList;

            Console.WriteLine("IP to listen on:");
            int count = 0;
            foreach (IPAddress ip in ips)
                Console.WriteLine("{0}: {1}", ++count, ip.ToString());

            string numString = Console.ReadLine();
            int pos = Convert.ToInt32(numString) - 1;
            IPAddress myAddress = ips[pos]; // Removing or not the scope ID doesn't change anything as "localEndPoint" below will contain it no matter what

            //IPAddress serverIP = IPAddress.Parse("192.168.1.64");
            //IPAddress localAddr = IPAddress.Parse("0.0.0.0");
            IPEndPoint localEndPoint = new IPEndPoint(myAddress, 6666);

            Console.WriteLine("Setting up server...");
            _serverSocket.Bind(localEndPoint);
            _serverSocket.Listen(5);
            _serverSocket.BeginAccept(new AsyncCallback(AcceptCallback), null);

        }

        private static void AcceptCallback(IAsyncResult AR)
        {
            Socket socket = _serverSocket.EndAccept(AR);
            _clientSockets.Add(socket);
            Console.WriteLine("Client Connected...");
            socket.BeginReceive(_buffer, 0, _buffer.Length,SocketFlags.None, new AsyncCallback(ReceiveCallback), socket);
            _serverSocket.BeginAccept(new AsyncCallback(AcceptCallback), null);
            
        }

        private static async void ReceiveCallback(IAsyncResult AR)
        {
            try
            {
                Socket socket = (Socket)AR.AsyncState;
                int received = socket.EndReceive(AR);

                byte[] dataBuf = new byte[received];
                Array.Copy(_buffer, dataBuf, received);

                string text = Encoding.ASCII.GetString(dataBuf);
                string[] values = text.Split(';');

                Console.WriteLine("Text Received: " + text);

                string response = string.Empty;

                //Close Connection if the client does not send anything
                if (values[0].Equals("") || values[0] == null)
                {
                    socket.Close();
                    Console.WriteLine("Client Disconnected");
                }
                else
                {
                    if (values[0].Equals("UID"))
                    {
                        string generatedUID = "";
                        //var newDevice = db.dbp_new_device_registration(564654, 5, 5, ref generatedUID);
                        Console.WriteLine(generatedUID);
                    }
                    else if (values[0].Equals("location"))
                    {
                        string point = values[2];
                        string radius = "400";
                        List<Place> responses = await GetNearbyPlaces(point, radius);
                        int count = responses.Count;
                        string[] nearbyList = new string[count];
                        for (int i = 0; i < count; i++)
                        {
                            nearbyList[i] = responses[i].PlaceId;
                        }
                        var specials = from special in db.uo_specials
                                       join store in db.uo_stores on special.store_id equals store.store_id
                                       where nearbyList.Contains(store.store_identifier)
                                          && special.active == "Y"
                                       select store.store_name + ";" + store.store_lat + ";" + store.store_long +";" + special.special_name + ";" + special.special_description;
                        SpecialList specialList = new SpecialList();
                        List<Special> list = new List<Special>();
                        foreach (var special in specials)
                        {
                            Special create = new Special();
                            String[] responseString = special.Split(';');
                            create.StoreName = responseString[0];
                            create.Latitude = double.Parse(responseString[1]);
                            create.Longitude = double.Parse(responseString[2]);
                            create.SpecialName = responseString[3];
                            create.SpecialDesc = responseString[4];

                            list.Add(create);
                        }
                        specialList.specialList = list;
                        string output = JsonConvert.SerializeObject(specialList);
                        Console.WriteLine(output);
                        response = output;
                    }

                    byte[] data = Encoding.ASCII.GetBytes(response);
                    socket.BeginSend(data, 0, data.Length, SocketFlags.None, new AsyncCallback(SendCallback), socket);

                    //socket.BeginReceive(_buffer, 0, _buffer.Length, SocketFlags.None, new AsyncCallback(ReceiveCallback), socket);
                }
            }
            catch (SocketException e)
            {
                Console.WriteLine("Client Disconnected");
            }
        }

        private static void SendCallback(IAsyncResult AR)
        {
            Socket socket = (Socket)AR.AsyncState;
            socket.EndSend(AR);
            socket.Close();
            Console.WriteLine("Client Disconnected");
        }

        private static async Task<List<Place>> GetNearbyPlaces(string point, string radius)
        {
            var nearbyList = new List<Place>();
            using (var client = new HttpClient())
            {
                string type = "restaurant";

                string query = string.Format(
                   "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location={0}&radius={1}&type={2}&key={3}",
                   point,
                   radius,
                   type,
                   apiKey);
                var response = await client.GetStringAsync(query);
                Response result = JsonConvert.DeserializeObject<Response>(response);
                nearbyList.AddRange(result.Places);
                //Console.WriteLine("response" + response);
                while (result.Next != null)
                {
                    Thread.Sleep(1800);
                    query = string.Format(
                       "https://maps.googleapis.com/maps/api/place/nearbysearch/json?pagetoken={0}&key={1}",
                       result.Next,
                       apiKey);
                    response = await client.GetStringAsync(query);
                    result = JsonConvert.DeserializeObject<Response>(response);
                    nearbyList.AddRange(result.Places);
                }
            }
            return nearbyList;
        }

    }
}
