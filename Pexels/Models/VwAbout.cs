using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pexels.Models
{
    public class VwAbout
    {
        public List<AboutUs> AboutUs { get; set; }
        public Settings Settings { get; set; }
        public AboutHeaders AboutHeaders { get; set; }
    }
}