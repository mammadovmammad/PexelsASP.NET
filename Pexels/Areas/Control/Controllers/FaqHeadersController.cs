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
    public class FaqHeadersController : Controller
    {
        private PexelsEntities db = new PexelsEntities();

        // GET: Control/FaqHeaders
        public ActionResult Index()
        {
            return View(db.FaqHeaders.ToList());
        }

        // GET: Control/FaqHeaders/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FaqHeaders faqHeaders = db.FaqHeaders.Find(id);
            if (faqHeaders == null)
            {
                return HttpNotFound();
            }
            return View(faqHeaders);
        }

        // GET: Control/FaqHeaders/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Control/FaqHeaders/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Title,Desc")] FaqHeaders faqHeaders)
        {
            if (ModelState.IsValid)
            {
                db.FaqHeaders.Add(faqHeaders);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(faqHeaders);
        }

        // GET: Control/FaqHeaders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FaqHeaders faqHeaders = db.FaqHeaders.Find(id);
            if (faqHeaders == null)
            {
                return HttpNotFound();
            }
            return View(faqHeaders);
        }

        // POST: Control/FaqHeaders/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Title,Desc")] FaqHeaders faqHeaders)
        {
            if (ModelState.IsValid)
            {
                db.Entry(faqHeaders).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(faqHeaders);
        }

        // GET: Control/FaqHeaders/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FaqHeaders faqHeaders = db.FaqHeaders.Find(id);
            if (faqHeaders == null)
            {
                return HttpNotFound();
            }
            return View(faqHeaders);
        }

        // POST: Control/FaqHeaders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            FaqHeaders faqHeaders = db.FaqHeaders.Find(id);
            db.FaqHeaders.Remove(faqHeaders);
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
