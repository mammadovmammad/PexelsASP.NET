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
            data.Photos = db.Photos.OrderByDescending(p => p.Id).Take(10).ToList();


            //data.Photos = db.Photos.Take(8).ToList();

            //if (db.Photos.Count() > 8)
            //{
            //    data.Photos2 = db.Photos.OrderBy(M=>M.Id).Skip(8).Take(8).ToList();
            //}
            //else 
            //{
            //    data.Photos2 = db.Photos.ToList();
            //}

            //if (db.Photos.Count() > 16)
            //{
            //    data.Photos3 = db.Photos.OrderBy(M => M.Id).Skip(16).Take(8).ToList();
            //}
            //else
            //{
            //    data.Photos3 = db.Photos.ToList();
            //}
            return View(data);
        }

        [HttpPost]
        public ActionResult Search(string query)
        {
            VwModel data = new VwModel();
            data.Settings = db.Settings.FirstOrDefault();
            data.Photos = db.Photos.Where(p=>p.Category.Category1.Trim().ToUpper()==query.Trim().ToUpper()).OrderByDescending(p => p.Id).Take(10).ToList();
            return View(data);
        }
        
    }
}