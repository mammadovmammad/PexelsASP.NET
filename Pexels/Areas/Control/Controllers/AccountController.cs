using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;
using System.Web.Helpers;

namespace Pexels.Areas.Control.Controllers
{
    public class AccountController : Controller
    {
        PexelsEntities db = new PexelsEntities();
        // GET: Control/Account
        public ActionResult Index()
        {
            return View();
        }

        //Login Admin In Control Panel
        [HttpPost]
        public ActionResult Login(Admins admin)
        {
            if (db.Admins.Count(u => u.Name == admin.Name) == 1)
            {
                if (Crypto.VerifyHashedPassword(db.Admins.First(u => u.Name == admin.Name).Password, admin.Password))
                {
                    Session["Adminlogged"] = true;
                    return RedirectToAction("Index", "Dashboard");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, "E-poçt və ya şifrə yanlışdır!");
                    return View(admin);
                }
            }
            else
            {
                ModelState.AddModelError(string.Empty, "E-poçt və ya şifrə yanlışdır!");
                return View(admin);
            }
        }

        //Logout Admin
        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }
    }
}