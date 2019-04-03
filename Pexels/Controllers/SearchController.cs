using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class SearchController : Controller
    {
        PexelsEntities db =new PexelsEntities();
        // GET: Search
        public ActionResult Index(string name)
        {
            VwModel data = new VwModel
            {
                Settings = db.Settings.FirstOrDefault(),
                Photos = db.Photos.OrderByDescending(p => p.Id).Where(p => p.Name.Contains(name)).ToList(),
                SearchCategory = db.Category.FirstOrDefault(),
                Searches = db.Searches.ToList(),
                Likes = db.Likes.ToList()
            };
            ViewBag.CategoryName = name;
            return View(data);
        }
    }
}