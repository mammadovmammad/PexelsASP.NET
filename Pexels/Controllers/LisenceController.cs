using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class LisenceController : BaseController
    {
        // GET: Lisence
        public ActionResult Index()
        {
            VwModel data = new VwModel();
            data.LisenceHeader = db.LisenceHeader.FirstOrDefault();
            data.LisenceAllow = db.LisenceAllows.ToList();
            data.LisenceCard = db.LisenceCards.ToList();
            data.LisenceNotAllow = db.LisenceNotAllows.ToList();
            return View(data);
        }
    }
}