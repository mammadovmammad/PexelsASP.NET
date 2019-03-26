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
        public ActionResult Index()
        {
            VwModel data = new VwModel();
            data.Settings = db.Settings.FirstOrDefault();
            data.Photos = db.Photos.OrderByDescending(p => p.Id).Take(9).ToList();
            return View(data);
        }
    }
}