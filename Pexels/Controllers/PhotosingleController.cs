using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class PhotosingleController : BaseController
    {
        // GET: Photosingle
        public ActionResult Index(int? id)
        {

            VwModel data = new VwModel();
            if (id == null)
            {
                HttpNotFound();
            }
            else
            {
                data.PhotoModel = db.Photos.Where(p => p.Id == id).FirstOrDefault();
            }
            
            return View(data);
        }
    }
}