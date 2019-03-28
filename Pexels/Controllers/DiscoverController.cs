using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class DiscoverController : Controller
    {
        PexelsEntities db =new PexelsEntities();
        // GET: Discover
        public ActionResult Index()
        {
            VwModel data = new VwModel();
            data.Settings = db.Settings.FirstOrDefault();
            data.Categories = db.Category.ToList();
            data.DiscoverHeader = db.DiscoverHeaders.FirstOrDefault();
            
            return View(data);
        }
    }
}