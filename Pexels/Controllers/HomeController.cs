using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class HomeController : Controller
    {
        protected PexelsEntities db = new PexelsEntities();
        public ActionResult Index()
        {
            VwModel data = new VwModel();
            data.Settings = db.Settings.FirstOrDefault();
            data.Photos = db.Photos.OrderByDescending(p => p.Id).ToList();

            return View(data);
        }

        [HttpPost]
        public ActionResult Search(string query)
        {
            VwModel data = new VwModel();
            data.Settings = db.Settings.FirstOrDefault();
            data.Photos = db.Photos.Where(p=>p.Category.Category1.ToUpper()==query.Trim().ToUpper()).OrderByDescending(p => p.Id).Take(10).ToList();
            return View(data);
        }
        
    }
}