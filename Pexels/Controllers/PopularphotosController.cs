using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class PopularphotosController : Controller
    {
        PexelsEntities db =new PexelsEntities();
        // GET: Popularphotos
        public ActionResult Index()
        {
            VwModel data = new VwModel
            {
                Settings = db.Settings.FirstOrDefault(),
                Photos = db.Photos.Where(p => p.Likes.Count() != 0).OrderByDescending(p => p.Likes.Count()).ToList(),
                Likes = db.Likes.ToList()
            };
            return View(data);
        }
    }
}