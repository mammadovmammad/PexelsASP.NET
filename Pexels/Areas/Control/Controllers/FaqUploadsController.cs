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
    public class FaqUploadsController : Controller
    {
        private PexelsEntities db = new PexelsEntities();

        // GET: Control/FaqUploads
        public ActionResult Index()
        {
            return View(db.FaqUploads.ToList());
        }

        // GET: Control/FaqUploads/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FaqUploads faqUploads = db.FaqUploads.Find(id);
            if (faqUploads == null)
            {
                return HttpNotFound();
            }
            return View(faqUploads);
        }

        // GET: Control/FaqUploads/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Control/FaqUploads/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Title,Text")] FaqUploads faqUploads)
        {
            if (ModelState.IsValid)
            {
                db.FaqUploads.Add(faqUploads);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(faqUploads);
        }

        // GET: Control/FaqUploads/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FaqUploads faqUploads = db.FaqUploads.Find(id);
            if (faqUploads == null)
            {
                return HttpNotFound();
            }
            return View(faqUploads);
        }

        // POST: Control/FaqUploads/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Title,Text")] FaqUploads faqUploads)
        {
            if (ModelState.IsValid)
            {
                db.Entry(faqUploads).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(faqUploads);
        }

        // GET: Control/FaqUploads/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FaqUploads faqUploads = db.FaqUploads.Find(id);
            if (faqUploads == null)
            {
                return HttpNotFound();
            }
            return View(faqUploads);
        }

        // POST: Control/FaqUploads/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            FaqUploads faqUploads = db.FaqUploads.Find(id);
            db.FaqUploads.Remove(faqUploads);
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
