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
    public class AboutHeadersController : Controller
    {
        private PexelsEntities db = new PexelsEntities();

        // GET: Control/AboutHeaders
        public ActionResult Index()
        {
            return View(db.AboutHeaders.ToList());
        }

        // GET: Control/AboutHeaders/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AboutHeaders aboutHeaders = db.AboutHeaders.Find(id);
            if (aboutHeaders == null)
            {
                return HttpNotFound();
            }
            return View(aboutHeaders);
        }

        // GET: Control/AboutHeaders/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Control/AboutHeaders/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,HeadTitle,HeadText,HeadBackground")] AboutHeaders aboutHeaders)
        {
            if (ModelState.IsValid)
            {
                db.AboutHeaders.Add(aboutHeaders);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(aboutHeaders);
        }

        // GET: Control/AboutHeaders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AboutHeaders aboutHeaders = db.AboutHeaders.Find(id);
            if (aboutHeaders == null)
            {
                return HttpNotFound();
            }
            return View(aboutHeaders);
        }

        // POST: Control/AboutHeaders/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,HeadTitle,HeadText,HeadBackground")] AboutHeaders aboutHeaders)
        {
            if (ModelState.IsValid)
            {
                db.Entry(aboutHeaders).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(aboutHeaders);
        }

        // GET: Control/AboutHeaders/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AboutHeaders aboutHeaders = db.AboutHeaders.Find(id);
            if (aboutHeaders == null)
            {
                return HttpNotFound();
            }
            return View(aboutHeaders);
        }

        // POST: Control/AboutHeaders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AboutHeaders aboutHeaders = db.AboutHeaders.Find(id);
            db.AboutHeaders.Remove(aboutHeaders);
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
