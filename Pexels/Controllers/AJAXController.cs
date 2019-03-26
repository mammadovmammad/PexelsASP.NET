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

        public ActionResult LoadPhotos(int skip)
        {
            VwModel vm = new VwModel()
            {
                Photos = db.Photos.OrderBy(p => p.Id).Skip(skip).Take(10).ToList(),
                Likes = db.Likes.ToList()
            };
            return PartialView("_PartialPhotos", vm);
        }

        //public ActionResult LikePhoto(int photoID)
        //{
        //    Users user = Session["Loggeduser"] as Users;

        //    Likes like = new Likes
        //    {
        //        PhotoId = photoID,
        //        UserId = user.Id
        //    };
        //    db.Likes.Add(like);
        //    db.SaveChanges();

        //    return Json(like);
        //}
    }
}