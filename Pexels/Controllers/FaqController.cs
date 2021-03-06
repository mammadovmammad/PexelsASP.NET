﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Controllers
{
    public class FaqController : Controller
    {
        protected PexelsEntities db = new PexelsEntities();
        // GET: Faq
        public ActionResult Index()
        {
            VwModel data = new VwModel();
            data.FaqHeader = db.FaqHeaders.FirstOrDefault();
            data.FaqNews = db.FaqNews.ToList();
            data.FaqUpload = db.FaqUploads.ToList();
            data.Settings = db.Settings.FirstOrDefault();
            return View(data);
        }
    }
}