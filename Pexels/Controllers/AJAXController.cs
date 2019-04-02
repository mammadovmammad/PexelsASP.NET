using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class AJAXController : Controller
    {
        // GET: AJAX
        private readonly PexelsEntities db;

        public AJAXController()
        {
            db = new PexelsEntities();
        }

        //Get Photos From Database With Ajax
        public ActionResult LoadPhotos(int skip)
        {
            VwModel vm = new VwModel()
            {
                Photos = db.Photos.OrderBy(p => p.Id).Skip(skip).Take(10).ToList(),
                Likes = db.Likes.ToList()
            };
            return PartialView("_PartialPhotos", vm);
        }

        //Like Photos By User
        public ActionResult LikePhoto(int photoID)
        {
            Users user = Session["User"] as Users;
            var addable = false;
            foreach (var like in db.Likes)
            {
                if (like.UserId == user.Id && like.PhotoId == photoID)
                {
                    return Json("false" , JsonRequestBehavior.AllowGet);
                }
                else
                {
                    addable = true;
                }
            }

            if (addable==true)
            {
                Likes Like = new Likes
                {
                    PhotoId = photoID,
                    UserId = user.Id,
                    Status = true
                };

                db.Likes.Add(Like);
                db.SaveChanges();
                return Json(Like);

            }
                return Json("false");
        }

        //Disslike Photos By User
        public ActionResult DissLikePhoto(int photoID)
        {
            Users user = Session["User"] as Users;

            Likes dislike = db.Likes.Where(l => l.PhotoId == photoID && l.UserId == user.Id).FirstOrDefault();

            db.Likes.Remove(dislike);
            db.SaveChanges();

            return Json(dislike);
        }
    }
}
