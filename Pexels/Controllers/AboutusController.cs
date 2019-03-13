using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class AboutusController : BaseController
    {
        // GET: Aboutus
        public ActionResult Index()
        {
            VwModel data = new VwModel();
            data.AboutUs = db.AboutUs.ToList();
            data.AboutHeaders = db.AboutHeaders.FirstOrDefault();
            return View(data);
        }
    }
}