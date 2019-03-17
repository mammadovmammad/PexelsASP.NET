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
        public ActionResult Index()
        {
            VwModel data = new VwModel();
            data.Settings = db.Settings.FirstOrDefault();
            return View(data);
        }
    }
}