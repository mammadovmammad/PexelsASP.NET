using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class UploadController : Controller
    {
        PexelsEntities db =new PexelsEntities();
        // GET: Upload
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Upload(HttpPostedFileBase img, int categoryId,string name)
        {
            Users user = Session["User"] as Users;
            Photos photo = new Photos()
            {
               Status = false,
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

                    return RedirectToAction("Index","Home");
                }
                else
                {
                    ModelState.AddModelError("Image", "Seklin tipi duzgun deyil ve ya olcusu 10mb-dan artiqdir.");
                }
                
            }
            return RedirectToAction("Index", "Aboutus");

        }
    }
}