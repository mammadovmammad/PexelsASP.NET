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
        // GET: Join
        public ActionResult Index()
        {
            return View();
        }


        // Create User In Register Page
        [HttpPost]
        public ActionResult Create(Users users)
        {
            if (db.Users.Count(u => u.Email == users.Email) == 1)
            {
                ModelState.AddModelError("SameUser", "We already have a user with such username or email in our database.");
            }
            else
            {
                users.Password = Crypto.HashPassword(users.Password);
                //db.Users.FirstOrDefault(u => u.Name == users.Name&&u.Surname==users.Surname&&u.Email==users.Email&&u.Password==users.Password);
                    db.Users.Add(users);
                    db.SaveChanges();
            }
            return RedirectToAction("Index","Join");
        }
    }
}