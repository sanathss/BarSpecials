using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;

namespace AddStores
{
    class Program
    {
        private static string apiKey = "AIzaSyBwuBhSkRpALHU9cVIoNtWn-c6hcMwJiZw";
        private string point;
        private string radius;
        private string path;
        private string filename;
        private string suburb;
        private Boolean broken = false;
        private int count;

        static void Main(string[] args)
        {
            Program application = new Program();
            application.Start();
        }

        private void Start()
        {
            SetSuburb();

            string rerun = "Y";
            while (rerun.Equals("Y") || rerun.Equals("y"))
            {
                RetrieveInput();
                Console.Write("Please wait while file is being generated");
                FileCheck();
                Console.WriteLine(count + " places found.");
                Console.WriteLine("Create another query? (Y/N)");
                rerun = Console.ReadLine();

            }
        }

        private void SetSuburb()
        {
            Console.WriteLine("Enter the Suburb: ");
            //while (true)
            //{
                suburb = Console.ReadLine();
                
            //}

        }

        private void FileCheck()
        {
            while (!File.Exists(path + filename))
            {
                Console.Write(".");
                Thread.Sleep(500);
                if (broken)
                {
                    break;
                }
            }
            Console.WriteLine("");
        }

        private async void RetrieveInput()
        {
            Console.WriteLine("Enter Coordinates:");
            point = Console.ReadLine();
            Console.WriteLine("Enter radius");
            radius = Console.ReadLine();
            broken = false;
            // Create a file to write to.
            path = "D:\\Projects\\BarSpecials\\Inserts\\";
            filename = "bulk_insert_ss_" + point + "_point_" + radius + "_radius.sql";
            var responses = await GetNearbyPlaces();
            int i = 0;
            string query = string.Format("INSERT INTO dbo.uo_store\n(store_identifier,\nstore_name,\nstore_lat,\nstore_long,\nsuburb_id,\nusername,\nuser_password,\ninsert_user,\ninsert_process,\ninsert_datetime)\n");
            foreach (var response in responses)
            {
                query = query + string.Format(" SELECT '{0}',\n '{1}',\n {2},\n {3},\n {4},\n 'username',\n 'password',\n HOST_NAME(),\n 'AddStores',\n GETDATE()\n WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = '{0}') \n",
                                            response.PlaceId.Replace("'", "''"),
                                            response.Name.Replace("'", "''"),
                                            response.Geo.Location.Latitude, 
                                            response.Geo.Location.Longitude,
                                            suburb) + " UNION \n";
                i++;
            }
            count = i;
            query = query.Substring(0, query.Length - 7);
            query = query + "\n\nSELECT *\n  FROM dbo.uo_store st";

            if (i < 60)
            {
                File.WriteAllText(path + filename, query);
            }
            else
            {
                Console.WriteLine("There are more than 60 locations at the specified point.");
                broken = true;
            }
        }

        private async Task<List<Place>> GetNearbyPlaces()
        {
            var nearbyList = new List<Place>();

            using (var client = new HttpClient())
            {
                //string point = "-36.87816,174.7754262";
                //string radius = "850";
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
