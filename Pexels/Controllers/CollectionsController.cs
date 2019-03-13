using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Pexels.Controllers
{
    public class CollectionsController : BaseController
    {
        // GET: Collections
        public ActionResult Index()
        {
            return View();
        }
    }
}