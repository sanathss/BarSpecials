package com.example.sanat.barmate;

import android.content.Context;
import android.content.res.Resources;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONException;

public class SpecialViewAdapter extends BaseAdapter {

    private JSONArray specialList;
    private Context context;
    private Location location;

    public SpecialViewAdapter(Context context, JSONArray specialList, Location location)
    {
        this.context = context;
        this.specialList = specialList;
        this.location = location;
    }

    @Override
    public int getCount() {
        return specialList.length();
    }

    @Override
    public Object getItem(int i) {
        try {
            return specialList.getJSONObject(i);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        //Draw Main Content Grid
        Log.d("Get View", "Start");
        if(view == null){
            Log.d("Get View", "View Inflator");
            LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            view = inflater.inflate(R.layout.activity_special_card, null);
        }
        Log.d("Get View", "Special Card Variables");
        ImageView img = view.findViewById(R.id.img);
        ImageView border = view.findViewById(R.id.border);
        TextView listingName = view.findViewById(R.id.listingName);
        TextView desc = view.findViewById(R.id.desc);
        TextView distanceView = view.findViewById(R.id.distance);
        try {
            if (getCount()-1 == i)
            {
                Log.d("Get View", "Last Card" + getCount() +";  "+ i);
                border.setVisibility(View.INVISIBLE);
            }
            listingName.setText(specialList.getJSONObject(i).getString("store_name"));
            desc.setText(specialList.getJSONObject(i).getString("special_desc"));

            //Set Special Image
            img.setImageResource(R.drawable.fuku_sushi);

            //Location distance identifier
            Location storeLocation = new Location(LocationManager.GPS_PROVIDER);
            storeLocation.setLatitude(specialList.getJSONObject(i).getDouble("latitude"));
            storeLocation.setLongitude(specialList.getJSONObject(i).getDouble("longitude"));
            int distance = calculateDistance(storeLocation);
            String distDisplay = distance + "m";
            distanceView.setText(distDisplay);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return view;
    }

    private int calculateDistance(Location storeLocation)
    {
        Log.d("Calculate Distance", "Start");
        float raw = location.distanceTo(storeLocation)/10;
        int value = Math.round(raw);
        return value*10;
    }
}
