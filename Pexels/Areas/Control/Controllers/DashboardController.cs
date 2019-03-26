using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Pexels.Areas.Control.Controllers
{
    public class DashboardController : Controller
    {
        // GET: Control/Dashboard
        public ActionResult Index()
        {
            if (Session["Adminlogged"]==null)
            {
                return RedirectToAction("Index", "Home");
            }
            return View();
        }
    }
}