using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace AddStores
{
    class Response
    {
        [JsonProperty("results")]
        public List<Place> Places { get; set; }
        [JsonProperty("next_page_token")]
        public string Next { get; set; }
        [JsonProperty("status")]
        public string Status { get; set; }
    }
}
