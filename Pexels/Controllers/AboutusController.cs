using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class AboutusController : Controller
    {
        public PexelsEntities db = new PexelsEntities();
        // GET: Aboutus
        public ActionResult Index()
        {
            VwModel data = new VwModel();
            data.AboutUs = db.AboutUs.ToList();
            data.AboutHeaders = db.AboutHeaders.FirstOrDefault();
            data.Settings = db.Settings.FirstOrDefault();
            return View(data);
        }
    }
}