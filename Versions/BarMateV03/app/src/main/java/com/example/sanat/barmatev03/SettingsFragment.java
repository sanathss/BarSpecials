package com.example.sanat.barmatev03;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.TextView;

import com.appyvet.materialrangebar.RangeBar;

public class SettingsFragment extends Fragment{

    protected View mView;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);

        View view = inflater.inflate(R.layout.activity_settings, container, false);

        final RangeBar lunch = view.findViewById(R.id.rangeLunch);
        final TextView lunchDisplay = view.findViewById(R.id.lunchDisplay);

        final RangeBar dinner = view.findViewById(R.id.rangeDinner);
        final TextView dinnerDisplay = view.findViewById(R.id.dinnerDisplay);

        final Switch mute = view.findViewById(R.id.mute);
        final Switch activate = view.findViewById(R.id.activate);

        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(getActivity());

        String muted = prefs.getString(getString(R.string.mute), "");
        String activated = prefs.getString(getString(R.string.activate), "");

        if(muted.equals(true))
        {
            mute.setChecked(true);
        }

        if(activated.equals(true))
        {
            activate.setChecked(true);
        }

        String lunchRange = prefs.getString(getString(R.string.lunch_range),"");
        final String[] savedLunch = lunchRange.split(";");

        if(savedLunch.length == 2)
        {
            Log.d("RangeChange", lunchRange);

            int lunchLeft = Integer.parseInt(savedLunch[0]);
            int lunchRight = Integer.parseInt(savedLunch[1]);

            lunch.setRangePinsByValue(lunchLeft,lunchRight);

            if(lunchLeft > 12)
            {
                lunchLeft = lunchLeft - 12;
            }
            if(lunchRight > 12)
            {
                lunchRight = lunchRight - 12;
            }
            lunchDisplay.setText(lunchLeft + " - " + lunchRight);
        }
        else
        {
            Log.d("RangeChange", "VALUE IS NULL");
        }

        String dinnerRange = prefs.getString(getString(R.string.dinner_range), "");
        final String[] savedDinner = dinnerRange.split(";");

        if(savedDinner.length == 2)
        {
            Log.d("RangeChange", dinnerRange);

            int dinnerLeft = Integer.parseInt(savedDinner[0]);
            int dinnerRight = Integer.parseInt(savedDinner[1]);

            dinner.setRangePinsByValue(dinnerLeft,dinnerRight);

            if(dinnerLeft > 12)
            {
                dinnerLeft = dinnerLeft - 12;
            }
            if(dinnerRight > 12)
            {
                dinnerRight = dinnerRight - 12;
            }
            dinnerDisplay.setText(dinnerLeft + " - " + dinnerRight);
        }
        else
        {
            Log.d("RangeChange", "VALUE IS NULL");
        }

        lunch.setOnRangeBarChangeListener(new RangeBar.OnRangeBarChangeListener() {
            @Override
            public void onRangeChangeListener(RangeBar rangeBar, int leftPinIndex, int rightPinIndex, String leftPinValue, String rightPinValue) {
                Log.d("RangeChange", "Lunch Change Listener");
                String range = leftPinValue + ";" + rightPinValue;

                SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(getActivity());

                SharedPreferences.Editor editor = prefs.edit();
                editor.putString(getString(R.string.lunch_range), range);
                editor.apply();

                int lunchLeft = Integer.parseInt(leftPinValue);
                int lunchRight = Integer.parseInt(rightPinValue);

                if(lunchLeft > 12)
                {
                    lunchLeft = lunchLeft - 12;
                }
                if(lunchRight > 12)
                {
                    lunchRight = lunchRight - 12;
                }
                String display = lunchLeft + " - " + lunchRight;
                lunchDisplay.setText(display);
            }
        });

        dinner.setOnRangeBarChangeListener(new RangeBar.OnRangeBarChangeListener() {
            @Override
            public void onRangeChangeListener(RangeBar rangeBar, int leftPinIndex, int rightPinIndex, String leftPinValue, String rightPinValue) {
                Log.d("RangeChange", "Dinner Change Listener");
                String range = leftPinValue + ";" + rightPinValue;

                SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(getActivity());

                SharedPreferences.Editor editor = prefs.edit();
                editor.putString(getString(R.string.dinner_range), range);
                editor.apply();

                int dinnerLeft = Integer.parseInt(leftPinValue);
                int dinnerRight = Integer.parseInt(rightPinValue);

                if(dinnerLeft > 12)
                {
                    dinnerLeft = dinnerLeft - 12;
                }
                if(dinnerRight > 12)
                {
                    dinnerRight = dinnerRight - 12;
                }
                String display = dinnerLeft + " - " + dinnerRight;
                dinnerDisplay.setText(display);
            }
        });

        Button restore = view.findViewById(R.id.restore);
        restore.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String[] lunchData = getString(R.string.lunch_default).split(";");
                String[] dinnerData = getString(R.string.dinner_default).split(";");

                lunchDisplay.setText(lunchData[0]);
                int lunchLeft = Integer.parseInt(lunchData[1]);
                int lunchRight = Integer.parseInt(lunchData[2]);

                lunch.setRangePinsByValue(lunchLeft,lunchRight);

                dinnerDisplay.setText(dinnerData[0]);
                int dinnerLeft = Integer.parseInt(dinnerData[1]);
                int dinnerRight = Integer.parseInt(dinnerData[2]);

                dinner.setRangePinsByValue(dinnerLeft,dinnerRight);
            }

        });

        mute.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(getActivity());

                SharedPreferences.Editor editor = prefs.edit();
                if(isChecked)
                {
                    editor.putString(getString(R.string.mute), "true");
                }
                else
                {
                    editor.putString(getString(R.string.mute), "false");
                }
                editor.apply();
            }
        });
        activate.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(getActivity());

                SharedPreferences.Editor editor = prefs.edit();
                if(isChecked)
                {
                    editor.putString(getString(R.string.activate), "true");
                }
                else
                {
                    editor.putString(getString(R.string.activate), "false");
                }
                editor.apply();
            }
        });


        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
    }


}
