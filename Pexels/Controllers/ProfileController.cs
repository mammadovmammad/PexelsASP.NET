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
            if (Session["Loggeduser"]==null)
            {
                return RedirectToAction("Login", "Account");
            }

            VwModel data = new VwModel();
            data.Settings = db.Settings.FirstOrDefault();
            data.Categories = db.Category.ToList();

            return View(data);
        }
    }
}