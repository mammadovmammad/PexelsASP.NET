using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class CollectionsController : Controller
    {
        protected PexelsEntities db = new PexelsEntities();
        // GET: Collections
        public ActionResult Index(int? id)
        {
            VwModel data = new VwModel
            {
                Photos = db.Photos.Where(v => v.CategoryId == id && v.Status == true).OrderByDescending(p => p.Id).ToList(),
                Likes = db.Likes.ToList(),
                Settings = db.Settings.FirstOrDefault()
            };
            return View(data);
        }
    }
}