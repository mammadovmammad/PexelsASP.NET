using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class LisenceController : Controller
    {
        protected PexelsEntities db = new PexelsEntities();
        // GET: Lisence
        public ActionResult Index()
        {
            VwModel data = new VwModel();
            data.LisenceHeader = db.LisenceHeader.FirstOrDefault();
            data.LisenceAllow = db.LisenceAllows.ToList();
            data.LisenceCard = db.LisenceCards.ToList();
            data.LisenceNotAllow = db.LisenceNotAllows.ToList();
            data.Settings = db.Settings.FirstOrDefault();
            return View(data);
        }
    }
}