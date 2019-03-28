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
            Users user = Session["User"] as Users;

            VwModel data = new VwModel();
            data.Settings = db.Settings.FirstOrDefault();
            data.Photos = db.Photos.Where(p=>p.Users.Id==user.Id).OrderByDescending(p=>p.Id).ToList();
            data.Categories = db.Category.ToList();

            return View(data);
        }
    }
}