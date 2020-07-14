﻿using Newtonsoft.Json;

namespace BarmateServer
{
    class Place
    {
        [JsonProperty("name")]
        public string Name { get; set; }        // Name
        [JsonProperty("vicinity")]
        public string Address { get; set; }     // Address
        [JsonProperty("place_id")]
        public string PlaceId { get; set; }     // Place Id
        [JsonProperty("types")]
        public string[] Types { get; set; }     // Categories
        [JsonProperty("geometry")]
        public Geometry Geo { get; set; }       // Co-ordinates
        public int counter { get; set; }
    }

    class Geometry
    {
        [JsonProperty("location")]
        public Location Location { get; set; }
    }

    public class Location
    {
        [JsonProperty("lat")]
        public double Latitude { get; set; }
        [JsonProperty("lng")]
        public double Longitude { get; set; }
    }
}