using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.InitialismGenerator
{
    /// <summary>
    /// Query options for the Initialism Generator API
    /// </summary>
    public class InitialismGeneratorQueryOptions
    {
        /// <summary>
        /// Phrase to convert to initialism (max 500 characters)
        /// </summary>
        [JsonProperty("phrase")]
        public string Phrase { get; set; }

        /// <summary>
        /// Exclude common words like 'the', 'of', 'and'
        /// </summary>
        [JsonProperty("excludeCommonWords")]
        public bool? ExcludeCommonWords { get; set; }

        /// <summary>
        /// Return the initialism in uppercase
        /// </summary>
        [JsonProperty("uppercase")]
        public bool? Uppercase { get; set; }
    }
}
