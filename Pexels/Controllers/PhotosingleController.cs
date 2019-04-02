using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class PhotosingleController : Controller
    {
        protected PexelsEntities db = new PexelsEntities();
        // GET: Photosingle
        public ActionResult Index(int? id)
        {

            VwModel data = new VwModel();
            data.Settings = db.Settings.FirstOrDefault();
            if (id == null)
            {
                HttpNotFound();
            }
            else
            {
                data.PhotoModel = db.Photos.Where(p => p.Id == id).FirstOrDefault();
                data.Likes = db.Likes.ToList();
            }
            
            return View(data);
        }
    }
}