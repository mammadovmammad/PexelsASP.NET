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
            VwModel data = new VwModel();
            data.Settings = db.Settings.FirstOrDefault();
            data.Photos = db.Photos.Where(p=>p.Likes.Count()!=0).OrderByDescending(p=>p.Likes.Count()).ToList();
            return View(data);
        }
    }
}