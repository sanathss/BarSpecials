package com.example.sanat.barmatev03;

import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SpecialsFragment extends Fragment {


    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);
        Log.d("Response", "TEST");
        View view = inflater.inflate(R.layout.activity_specials, container, false);

        GridView grid = view.findViewById(R.id.gridview);

        Bundle bundle = this.getArguments();
        if (bundle != null) {
            try {
                String response = bundle.getString("Response");
                Log.d("Response", response);
                JSONArray specialList = new JSONObject(response).getJSONArray("specialList");
                String sLocation = bundle.getString("Location");
                Log.d("Location", sLocation);
                Location location = stringLocation(sLocation);
                SpecialViewAdapter adapter = new SpecialViewAdapter(getActivity(), specialList, location);
                grid.setAdapter(adapter);

                grid.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View v,
                                            int position, long id) {
                        Log.d("SetUp Grid", "Clicked");
                    }
                });
            } catch (JSONException e) {
                e.printStackTrace();
            }

        }
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
    }

    private Location stringLocation(String sLocation)
    {
        Location location = new Location(LocationManager.GPS_PROVIDER);
        String[] coords = sLocation.split(", ");
        location.setLatitude(Double.parseDouble(coords[0]));
        location.setLongitude(Double.parseDouble(coords[1]));
        return location;
    }


}
