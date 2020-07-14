using Newtonsoft.Json;
using System.Collections.Generic;

namespace BarmateServer
{
    class SpecialList
    {
        [JsonProperty("specialList")]
        public List<Special> specialList { get; set; }
    }

    class Special
    {
        [JsonProperty("store_name")]
        public string StoreName { get; set; }    // Store Name
        [JsonProperty("latitude")]
        public double Latitude { get; set; }     // Latitude
        [JsonProperty("longitude")]
        public double Longitude { get; set; }    // Longitude
        [JsonProperty("special_name")]
        public string SpecialName { get; set; }  // Special Name
        [JsonProperty("special_desc")]
        public string SpecialDesc { get; set; }  // Special Desc
    }
}
