using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class BaseController : Controller
    {
        protected PexelsEntities db = new PexelsEntities();
        public BaseController()
        {
            ViewBag.Setting = db.Settings.FirstOrDefault();
        }
    }
}