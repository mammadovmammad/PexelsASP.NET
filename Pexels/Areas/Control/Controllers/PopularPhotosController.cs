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
    public class PopularPhotosController : Controller
    {
        private PexelsEntities db = new PexelsEntities();

        // GET: Control/PopularPhotos
        public ActionResult Index()
        {
            return View(db.PopularPhotos.ToList());
        }

        // GET: Control/PopularPhotos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PopularPhotos popularPhotos = db.PopularPhotos.Find(id);
            if (popularPhotos == null)
            {
                return HttpNotFound();
            }
            return View(popularPhotos);
        }

        // GET: Control/PopularPhotos/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Control/PopularPhotos/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Title,Photo,Icon")] PopularPhotos popularPhotos)
        {
            if (ModelState.IsValid)
            {
                db.PopularPhotos.Add(popularPhotos);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(popularPhotos);
        }

        // GET: Control/PopularPhotos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PopularPhotos popularPhotos = db.PopularPhotos.Find(id);
            if (popularPhotos == null)
            {
                return HttpNotFound();
            }
            return View(popularPhotos);
        }

        // POST: Control/PopularPhotos/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Title,Photo,Icon")] PopularPhotos popularPhotos)
        {
            if (ModelState.IsValid)
            {
                db.Entry(popularPhotos).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(popularPhotos);
        }

        // GET: Control/PopularPhotos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PopularPhotos popularPhotos = db.PopularPhotos.Find(id);
            if (popularPhotos == null)
            {
                return HttpNotFound();
            }
            return View(popularPhotos);
        }

        // POST: Control/PopularPhotos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PopularPhotos popularPhotos = db.PopularPhotos.Find(id);
            db.PopularPhotos.Remove(popularPhotos);
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
