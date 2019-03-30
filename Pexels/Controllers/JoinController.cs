using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;
using System.Web.Helpers;
using Microsoft.Ajax.Utilities;

namespace Pexels.Controllers
{
    public class JoinController : Controller
    {
        PexelsEntities db = new PexelsEntities();

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        // Create User In Register Page
        [HttpPost]
        public ActionResult Create(Users users)
        {
            var sameEmail = db.Users.FirstOrDefault(e => e.Email == users.Email);
            if (sameEmail!=null)
            {
                ViewBag.SameEmailError = "Bu E-poçt artıq qeydiyyatdan keçib";
                return View();
            }
            else
            {
                    users.Password = Crypto.HashPassword(users.Password);
                    //db.Users.FirstOrDefault(u => u.Name == users.Name&&u.Surname==users.Surname&&u.Email==users.Email&&u.Password==users.Password);
                    db.Users.Add(users);
                    db.SaveChanges();
            }
            return RedirectToAction("Create","Join");
        }
    }
}