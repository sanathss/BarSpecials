package com.example.sanat.barmate;

import android.Manifest;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.NotificationCompat;
import android.support.v4.app.NotificationManagerCompat;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.concurrent.ExecutionException;

public class MainActivity extends AppCompatActivity {

    //Location Variables
    private static final int MY_PERMISSION_ACCESS_COARSE_LOCATION = 11;
    private static final int MY_PERMISSION_ACCESS_FINE_LOCATION = 12;

    private Location lastKnownLocation;

    //Notification Variables
    static final private String CHANNEL_1_ID = "channel1";

    //Specials Variables
    private NotificationManagerCompat notificationManager;
    private PendingIntent pendingIntent;
    final static private String groupKey = "GROUPING";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Begin Application Set Up
        // Request Permissions
        locationPermissionCheck();

        // Set Up Notification Manager
        setupNotificationChannels();

        // Set Up Location Services
        // Send Initial Request
        requestSpecials(getCoarseLocation());
        setupLocationListener();

        // Set Up UI Components
        prepareButtons();

    }

    //Ensures and prompts the user to allow the required location permissions
    private void locationPermissionCheck() {
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_COARSE_LOCATION}, MY_PERMISSION_ACCESS_COARSE_LOCATION);
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, MY_PERMISSION_ACCESS_FINE_LOCATION);
            return;
        }
    }

    //Construct formatted Location Request String
    private String locationString(Location location) {
        Log.d("Location String", "Start");
        return (location.getLatitude() + ", " + location.getLongitude());
    }

    //Retrieve Coarse Network Location
    private Location getCoarseLocation() {
        //Method CALLED ONCE AT START UP
        //Method used to retrieve devices last known network location on Start Up.
        Log.d("Initial Location", "Start");
        LocationManager initialLocation = (LocationManager) getSystemService
                (Context.LOCATION_SERVICE);
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_COARSE_LOCATION}, MY_PERMISSION_ACCESS_COARSE_LOCATION);
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, MY_PERMISSION_ACCESS_FINE_LOCATION);
            return null;
        }
        Location coarseLocation = initialLocation.getLastKnownLocation(LocationManager.PASSIVE_PROVIDER);
        Log.d("Initial Location", coarseLocation.getLatitude() + ", " + coarseLocation.getLongitude());
        return initialLocation.getLastKnownLocation(LocationManager.PASSIVE_PROVIDER);
    }

    //Location Listener Set Up
    private void setupLocationListener() {
        //Location Retrieval variables
        long LOCATION_REFRESH_TIME = 10000;
        float LOCATION_REFRESH_DISTANCE = 10;

        Log.d("Location Listener", "Start");

        LocationListener listener = new LocationListener() {
            @Override
            public void onLocationChanged(Location location) {
                Log.d("Location Listener", "Location Changed");
                Log.d("Location Listener", location.getLatitude() + ", " + location.getLongitude());
                requestSpecials(location);
            }

            @Override
            public void onStatusChanged(String s, int i, Bundle bundle) {
                Log.d("Location Listener", "Location Status Changed");

            }

            @Override
            public void onProviderEnabled(String s) {
                Log.d("Location Listener", "Provider Enabled");

            }

            @Override
            public void onProviderDisabled(String s) {
                Log.d("Location Listener", "Provider Disabled");

            }
        };
        LocationManager mLocationManager = (LocationManager) getSystemService(LOCATION_SERVICE);
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED)
        {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_COARSE_LOCATION}, MY_PERMISSION_ACCESS_COARSE_LOCATION);
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, MY_PERMISSION_ACCESS_FINE_LOCATION);
            return;
        }
        mLocationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, LOCATION_REFRESH_TIME, LOCATION_REFRESH_DISTANCE, listener);
    }

    private void prepareButtons()
    {
        //METHOD CALLED ONCE AT START UP
        /*Log.d("Prepare Buttons", "Start");
        Button request = findViewById(R.id.request);
        request.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("Prepare Buttons", "Click");

                //Return Dummy Results on Button Click
                Location temp = new Location(LocationManager.GPS_PROVIDER);
                temp.setLatitude(-36.8667283);//-36.8667283,174.7747457
                temp.setLongitude(174.7747457);

                requestSpecials(temp);
            }
        });*/
    }

    private void setupNotificationChannels()
    {
        //METHOD CALLED ONCE AT START UP
        Log.d("Setup Channels", "Start");
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel channel1 = new NotificationChannel(
                    CHANNEL_1_ID,
                    "Channel 1",
                    NotificationManager.IMPORTANCE_HIGH
            );
            channel1.setDescription("This is Channel 1");

            NotificationManager manager = getSystemService(NotificationManager.class);
            manager.createNotificationChannel(channel1);
        }
        notificationManager = NotificationManagerCompat.from(this);

        // Create an explicit intent for an Activity in your app
        Log.d("Setup Channels", "Creating Intents");
        Intent intent = new Intent(this, MainActivity.class);
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
        pendingIntent = PendingIntent.getActivity(this, 0, intent, 0);
    }

    private void requestSpecials(Location location)
    {
        Log.d("Request Specials", "Start");
        //Location Object is converted into request format in parameter of ASYNC object
        String response = null;
        JSONObject jObject;
        JSONArray specialList = null;
        try {
            response = new SpecialsRequest().execute(locationString(location)).get();
            jObject = new JSONObject(response);
            specialList = jObject.getJSONArray("specialList");
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();
        }

        Log.d("Request Specials", "Response Received" + response);
        if(specialList != null)
        {
            notificationManager.cancelAll();
            Log.d("Request Specials", "JSONify");
            Notification notify = createNotificationList(specialList);
            notificationManager.notify(1, notify);
            setupGrid(specialList, location);
        }
    }

    private Notification createNotificationList(JSONArray specialList)
    {
        Log.d("Create Notify", "Start");
        try {

            Log.d("Create Notify", "Notification Builder");
            NotificationCompat.InboxStyle inboxStyle =
                    new NotificationCompat.InboxStyle();

            Log.d("Create Notify", "Constructing Notification");
            NotificationCompat.Builder mBuilder =  new NotificationCompat.Builder(getApplicationContext(), CHANNEL_1_ID)
                    .setSmallIcon(R.drawable.specials_icon)
                    .setContentTitle("BarMate")
                    .setContentText("There are " + specialList.length() + " cheap eats nearby.")
                    .setContentIntent(pendingIntent)
                    .setColor(Color.GRAY)
                    .setAutoCancel(true)
                    .setOnlyAlertOnce(true)
                    .setDefaults(Notification.DEFAULT_ALL)
                    .setPriority(NotificationCompat.PRIORITY_MAX)
                    .setGroup(groupKey)
                    .setGroupSummary(true);

            Log.d("Create Notify", "Add Inbox style rows");
            for(int i = 0;i < specialList.length(); i++)
            {
                inboxStyle.addLine(specialList.getJSONObject(i).getString("store_name") + ": " + specialList.getJSONObject(i).getString("special_desc"));
            }
            mBuilder.setStyle(inboxStyle);

            return mBuilder.build();

        } catch (JSONException e) {
            e.printStackTrace();
        }

        return null;
    }

    private void setupGrid(JSONArray specialList, Location location)
    {
        Log.d("SetUp Grid", "Start");

        GridView specialGrid = findViewById(R.id.gridView);
        SpecialViewAdapter adapter = new SpecialViewAdapter(MainActivity.this, specialList, location);
        specialGrid.setAdapter(adapter);
        specialGrid.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View v,
                                    int position, long id) {
                Log.d("SetUp Grid", "Clicked");
            }
        });
    }

    //Create ASYNC Inner Class
    public class SpecialsRequest extends AsyncTask<String, String, String> {

        //ASYNC INNER CLASS
        @Override
        protected void onPreExecute() {
            // Runs on UI thread- Any code you wants
            // to execute before web service call. Put it here.
            // Eg show progress dialog
            Log.d("Request Object", "PreExecute Start");
        }
        //ASYNC INNER CLASS METHODS
        @Override
        protected String doInBackground(String... params) {
            // Runs in background thread
            Log.d("Request Object", "doInBackground Start");
            String result = "";//your web service request;
            Log.d("Request Object", "Begin connection setup");
            try {
                InetAddress serverAddress = InetAddress.getByName("192.168.1.74");
                Socket connect = new Socket(serverAddress, 6666);
                PrintWriter out = new PrintWriter(new BufferedWriter(new OutputStreamWriter(connect.getOutputStream())), true);
                Log.d("Request Object", "Sending...");
                out.println("location;123456;" + params[0]);
                Log.d("Request Object", "Receiving...");
                BufferedReader reader = new BufferedReader(new InputStreamReader(connect.getInputStream()));
                result = reader.readLine();
                Log.d("Request Object", "Closing Readers and Writers");
                reader.close();
                out.close();
                connect.close();
            } catch (UnknownHostException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            //result = "{\"specialList\":[\t{\"store_name\":\"Taiwan Restaurant\",\t \"latitude\":-36.866728,\t \"longitude\":174.776934,\t \"special_name\":\"American Muscle\",\t \"special_desc\":\"Big burger with double beef patty\"\t },\t {\"store_name\":\"Taiwan Restaurant\",\t \"latitude\":-36.866728,\t \"longitude\":174.776934,\t \"special_name\":\"Hawaiian\",\t \"special_desc\":\"Hawaii style pinapple burger\"\t },\t {\"store_name\":\"One8Tea\",\t \"latitude\":-36.8756382,\t \"longitude\":174.7768752,\t \"special_name\":\"Hawaiian\",\t \"special_desc\":\"Hawaii style pinapple burger\"\t }\t]}";
            return result;
        }
        //ASYNC INNER CLASS METHODS
        @Override
        protected void onProgressUpdate(String... values) {
            Log.d("Request Object", "Progress Update Start");
            super.onProgressUpdate(values);
        }
        //ASYNC INNER CLASS METHODS
        @Override
        protected void onPostExecute(String resp) {
            Log.d("Request Object", "PostExecute Start");
            // runs in UI thread - You may do what you want with response
            // Eg Cancel progress dialog - Use result
        }

    }
    //End Details of new ASYNC class

}
