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
        [HttpGet]
        public ActionResult Upload()
        {
            if (Session["Loggeduser"]==null)
            {
                return RedirectToAction("Login", "Account");
            }

            Users user = Session["User"] as Users;
            VwModel data = new VwModel
            {
                Settings = db.Settings.FirstOrDefault(),
                Photos = db.Photos.Where(p => p.Users.Id == user.Id&&p.Status==true).OrderByDescending(p => p.Id).ToList(),
                Categories = db.Category.ToList(),
                Likes = db.Likes.ToList()
            };
               
            return View(data);
        }


        //Upload Photo By User
        [HttpPost]
        public ActionResult Upload(HttpPostedFileBase img, int categoryId, string name)
        {
            Users user = Session["User"] as Users;
            VwModel data = new VwModel
            {
                Settings = db.Settings.FirstOrDefault(),
                Photos = db.Photos.Where(p => p.Users.Id == user.Id&&p.Status==true).OrderByDescending(p => p.Id).ToList(),
                Categories = db.Category.ToList()
            };

            //Show Error Message When User Don't Set Photo And Photo Name
            if (img==null||string.IsNullOrWhiteSpace(name))
            {
                ViewBag.IMGnullError = "Şəkil boş ola bilməz";
                ViewBag.NameNullError = "Şəkilin adı boş ola bilməz";
                return View(data);
            }

            Photos photo = new Photos()
            {
                Status = true,
                UserId = user.Id,
                CategoryId = categoryId,
                Name = name
            };

            if (ModelState.IsValid)
            {
                if (true)
                {
                    photo.Link = Extensions.SaveImage(Server.MapPath("~/Public/UserImage"), img);

                    db.Photos.Add(photo);
                    db.SaveChanges();

                    return RedirectToAction("Index", "Home");
                }

            }
            return RedirectToAction("Index", "Aboutus");
        }
    }
}