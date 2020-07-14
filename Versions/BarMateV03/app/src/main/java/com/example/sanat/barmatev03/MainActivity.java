package com.example.sanat.barmatev03;

import android.Manifest;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.design.widget.NavigationView;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NotificationCompat;
import android.support.v4.app.NotificationManagerCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;

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
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.ExecutionException;

public class MainActivity extends AppCompatActivity
                       implements NavigationView.OnNavigationItemSelectedListener {

    //Fragment Variables
    private String fragment = "main";
    private Bundle data = new Bundle();

    //Location Variables
    private static final int MY_PERMISSION_ACCESS_COARSE_LOCATION = 11;
    private static final int MY_PERMISSION_ACCESS_FINE_LOCATION = 12;

    //Notification Variables
    static final private String CHANNEL_1_ID = "channel1";
    private NotificationManagerCompat notificationManager;
    private PendingIntent pendingIntent;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ActivityCompat.requestPermissions(this,new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, 1);

        // Location Permissions
        locationPermissionCheck();

        // Set Up Action Bar
        setupActionBar();

        activeCheck();

        // Set Up Main Specials Fragment
        //setupInitialFragments();
        setFragment(new SpecialsFragment());

        // Set Up Notification Manager
        setupNotificationChannels();

        // Set Up Location Services
        // Send Initial Request
        requestSpecials(getCoarseLocation());       //Initial Request
        setupLocationListener();                    //Constructs Secondary Requests

    }

    // Location Permissions
    private void locationPermissionCheck()
    {
        //if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_COARSE_LOCATION}, MY_PERMISSION_ACCESS_COARSE_LOCATION);
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, MY_PERMISSION_ACCESS_FINE_LOCATION);
            return;
        //}

    }
    // Set Up Action Bar
    private void setupActionBar()
    {
        Log.d("Setup Action", "Start");

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawer, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawer.addDrawerListener(toggle);
        toggle.syncState();

        NavigationView navigationView = findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);
    }
    // Navigation Drawer
    @Override
    public void onBackPressed()
    {
        Log.d("BackPress", "Start");

        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu)
    {
        // Inflate the menu; this adds items to the action bar if it is present.
        return true;
    }
    @SuppressWarnings("StatementWithEmptyBody")
    @Override
    public boolean onNavigationItemSelected(MenuItem item)
    {
        // Handle navigation view item clicks here.
        Log.d("Nav Select", "Start");

        int id = item.getItemId();

        if (id == R.id.specialTab && !fragment.equals("main"))
        {
            Log.d("Nav Select", "Special");
            fragment = "main";
            setTitle("Specials");
            SpecialsFragment grid = new SpecialsFragment();
            grid.setArguments(data);
            setFragment(grid);
        }
        else if (id == R.id.settingsTab && !fragment.equals("settings"))
        {
            Log.d("Nav Select", "Settings");
            fragment = "settings";
            setTitle("Settings");
            setFragment(new SettingsFragment());
        }

        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }
    // Set Up Fragments
    private void setFragment(Fragment fragment)
    {
        Log.d("Create Frag", "Start");
        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction ft = fragmentManager.beginTransaction();
        ft.replace(R.id.content, fragment);
        ft.commit();
    }
    // Set Up Notification Manager
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
    //Retrieve Coarse Network Location
    private Location getCoarseLocation()
    {
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
    private void setupLocationListener()
    {
        //Location Retrieval variables
        long LOCATION_REFRESH_TIME = 10000;
        float LOCATION_REFRESH_DISTANCE = 10;

        Log.d("Location Listener", "Start");

        LocationListener listener = new LocationListener() {
            @Override
            public void onLocationChanged(Location location) {
                Log.d("Location Listener", "Location Changed");

                if(fragment.equals("main"))
                {
                    Log.d("Location Listener", location.getLatitude() + ", " + location.getLongitude());
                    if((activeCheck() || switchCheck("activate")) && !switchCheck("mute"))
                    {
                        requestSpecials(location);
                    }
                }

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
    //Check if time is active
    private boolean activeCheck()
    {
        String[] lunchData = getString(R.string.lunch_default).split(";");
        String[] dinnerData = getString(R.string.dinner_default).split(";");

        int lunchLeft = Integer.parseInt(lunchData[0]);
        int lunchRight = Integer.parseInt(lunchData[1]);
        int dinnerLeft = Integer.parseInt(lunchData[0]);
        int dinnerRight = Integer.parseInt(lunchData[1]);

        //lunchDisplay.setText(lunchData[0]);
        Calendar rightNow = Calendar.getInstance();
        int currentHour = rightNow.get(Calendar.HOUR_OF_DAY);

        if(lunchLeft <= currentHour && lunchRight > currentHour)
        {
            return true;
        }
        if(dinnerLeft <= currentHour && dinnerRight > currentHour)
        {
            return true;
        }
        Log.d("TIME***", currentHour + lunchData[0] + lunchData[1]);
        return false;
    }
    //Switch Checker
    private boolean switchCheck(String switches)
    {
        if(switches.equals("mute") && getString(R.string.mute).equals("true"))
        {
            return false;
        }
        if(switches.equals("activate") && getString(R.string.activate).equals("true"))
        {
            return true;
        }
        return false;
    }
    //Send a Request to the Server
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
        } catch (InterruptedException | ExecutionException | JSONException e) {
            e.printStackTrace();
        }

        Log.d("Request Specials", "Response Received" + response);
        if(specialList != null)
        {
            notificationManager.cancelAll();
            Log.d("Request Specials", "JSONify");
            Notification notify = createNotificationList(specialList);
            notificationManager.notify(1, notify);
            setupGrid(specialList, response, location);
        }
    }
    //Construct formatted Location Request String
    private String locationString(Location location)
    {
        Log.d("Location String", "Start");
        return (location.getLatitude() + ", " + location.getLongitude());
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
    //Set Up Special Display Grid and Fragment
    private void setupGrid(JSONArray specialList, String response, Location location)
    {
        Log.d("SetUp Grid", "Start");

        //Retrieve the grid from inner views
        //View appBar = findViewById(R.id.appBar);
        //View mainContent = appBar.findViewById(R.id.content);
        //GridView specialGrid = mainContent.findViewById(R.id.gridView);
        ///////////
        /*GridView specialGrid = grid.getGridView();
        if(specialGrid==null){
            Log.d("test","test");
        }else{
        SpecialViewAdapter adapter = new SpecialViewAdapter(MainActivity.this, specialList, location);
        specialGrid.setAdapter(adapter);
        specialGrid.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View v,
                                    int position, long id) {
                Log.d("SetUp Grid", "Clicked");
            }
        });}*/
        //lastKnownLocation = location;

        SpecialsFragment grid = new SpecialsFragment();
        data = new Bundle();
        data.putString("Response", response);
        data.putString("Location", locationString(location));
        grid.setArguments(data);
        setFragment(grid);
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
