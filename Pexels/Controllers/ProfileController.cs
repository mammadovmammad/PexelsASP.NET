using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;


namespace Pexels.Controllers
{
    public class ProfileController : Controller
    {
        PexelsEntities db =new PexelsEntities();
        // GET: Profile
        public ActionResult Index()
        {
            VwModel data = new VwModel();
            data.Settings = db.Settings.FirstOrDefault();

            return View(data);
        }
    }
}