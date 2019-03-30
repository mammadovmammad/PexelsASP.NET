using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;
using System.Web.Helpers;

namespace Pexels.Controllers
{
    public class AccountController : Controller
    {
        PexelsEntities db=new PexelsEntities();

        public static Users current_user;
        public static int user_id;
        
        // GET: Login
        public ActionResult Login()
        {
            return View();
        }


        //User Login In Page
        [HttpPost]
        public ActionResult Login(Users user)
        {
            if (db.Users.Count(u => u.Email == user.Email) == 1)
            {
                if (Crypto.VerifyHashedPassword(db.Users.First(u => u.Email==user.Email).Password, user.Password))
                {
                    current_user = db.Users.FirstOrDefault(u => u.Email == user.Email);
                    Session["Loggeduser"] = true;
                    Session["User"] = current_user;
                    return RedirectToAction("Index","Home");
                }
                else
                {
                    ViewBag.WrongPassOrEmail = "E-poçt və ya şifrə yanlışdır!";
                    return View(user);
                }
            }
            return View(user);
        }

        //User Logout
        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }

    }
}