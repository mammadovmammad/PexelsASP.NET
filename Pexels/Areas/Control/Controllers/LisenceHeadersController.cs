using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Pexels.Models;

namespace Pexels.Areas.Control.Controllers
{
    public class LisenceHeadersController : Controller
    {
        private PexelsEntities db = new PexelsEntities();

        // GET: Control/LisenceHeaders
        public ActionResult Index()
        {
            return View(db.LisenceHeader.ToList());
        }

        // GET: Control/LisenceHeaders/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LisenceHeader lisenceHeader = db.LisenceHeader.Find(id);
            if (lisenceHeader == null)
            {
                return HttpNotFound();
            }
            return View(lisenceHeader);
        }

        // GET: Control/LisenceHeaders/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Control/LisenceHeaders/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Title,Text,Background")] LisenceHeader lisenceHeader)
        {
            if (ModelState.IsValid)
            {
                db.LisenceHeader.Add(lisenceHeader);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(lisenceHeader);
        }

        // GET: Control/LisenceHeaders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LisenceHeader lisenceHeader = db.LisenceHeader.Find(id);
            if (lisenceHeader == null)
            {
                return HttpNotFound();
            }
            return View(lisenceHeader);
        }

        // POST: Control/LisenceHeaders/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Title,Text,Background")] LisenceHeader lisenceHeader)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lisenceHeader).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(lisenceHeader);
        }

        // GET: Control/LisenceHeaders/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LisenceHeader lisenceHeader = db.LisenceHeader.Find(id);
            if (lisenceHeader == null)
            {
                return HttpNotFound();
            }
            return View(lisenceHeader);
        }

        // POST: Control/LisenceHeaders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            LisenceHeader lisenceHeader = db.LisenceHeader.Find(id);
            db.LisenceHeader.Remove(lisenceHeader);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
