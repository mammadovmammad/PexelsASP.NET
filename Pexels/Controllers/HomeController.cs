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
            //Users user = Session["User"] as Users;
            
            VwModel data = new VwModel
            {
                Settings = db.Settings.FirstOrDefault(),
                Photos = db.Photos.Where(p=>p.Status==true).OrderByDescending(p => p.Id).ToList(),
                Homes = db.Homes.FirstOrDefault(),
                Likes = db.Likes.ToList()
            };

            return View(data);
        }

        //Search Photo Index Page
        [HttpPost]
        public ActionResult Search(string query)
        {
            VwModel data = new VwModel();
            data.Settings = db.Settings.FirstOrDefault();
            data.Photos = db.Photos.Where(p=>p.Name.ToUpper().Contains(query.Trim().ToUpper()) || p.Category.Category1.Contains(query.Trim().ToUpper())).OrderByDescending(p => p.Id)./*Take(10).*/ToList();
            data.Likes = db.Likes.ToList();
            return View(data);
        }
        
    }
}