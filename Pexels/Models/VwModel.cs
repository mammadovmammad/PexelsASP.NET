using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Pexels.Models
{
    public class VwModel
    {
        public Homes Homes { get; set; }
        public List<AboutUs> AboutUs { get; set; }
        public AboutHeaders AboutHeaders { get; set; }
        public LisenceHeader LisenceHeader { get; set; }
        public List<Category> Categories { get; set; }
        public Category SearchCategory { get; set; }
        public DiscoverHeaders DiscoverHeader { get; set; }
        public List<Photos> Photos { get; set; }
        public List<LisenceAllows> LisenceAllow { get; set; }
        public List<LisenceCards> LisenceCard { get; set; }
        public List<LisenceNotAllows> LisenceNotAllow { get; set; }
        public Settings Settings { get; set; }
        public Photos PhotoModel { get; set; }
        public FaqHeaders FaqHeader { get; set; }
        public List<FaqNews> FaqNews { get; set; }
        public List<FaqUploads> FaqUpload{ get; set; }
        public Users User { get; set; }
        public List<Likes> Likes { get; set; }
        public List<Photos> SessionuserLikeses { get; set; }
        public List<Searches> Searches { get; set; }

        public class userRegistration
        {
            [Required, MinLength(5, ErrorMessage = "ad minimum bes herf olmalidir")]
            public string Firstname { get; set; }
            
        }
    }
}