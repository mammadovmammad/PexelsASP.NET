using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;
using System.Web.Helpers;

namespace Pexels.Controllers
{
    public class LoginController : Controller
    {
        PexelsEntities db=new PexelsEntities();

        public static Users current_user;
        public static int user_id;
        
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Hash()
        {
            string a = Crypto.HashPassword("123");
            return Content(a);
        }

        public ActionResult Login()
        {
          

            return View();
        }

        [HttpPost]
        public ActionResult Index(Users user)
        {
            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("Email", "Error");
            }
            if (string.IsNullOrEmpty(user.Email) || string.IsNullOrEmpty(user.Password))
            {
                Session["LoginError"] = "E-poçt və ya şifrə boş buraxılmamalıdır!";
                return RedirectToAction("Index");
            }

            if (db.Users.Count(u => u.Email == user.Email) == 1)
            {
                if (Crypto.VerifyHashedPassword(db.Users.First(u => u.Email==user.Email).Password, user.Password))
                {
                    current_user = db.Users.First(u => u.Email == user.Email);
                    Session["Loggeduser"] = true;
                    Session["User"] = current_user;
                    return RedirectToAction("Index","Home");
                }
                else
                {
                    ModelState.AddModelError(string.Empty,"Email or Password is wrong");
                    return View(user);
                }
            }
            else
            {
                ModelState.AddModelError(string.Empty, "Email or Password is wrong");
                return View(user);

            }




            return View(user);
        }

    }
}