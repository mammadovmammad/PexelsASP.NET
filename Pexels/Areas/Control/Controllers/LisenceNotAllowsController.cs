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
    public class LisenceNotAllowsController : Controller
    {
        private PexelsEntities db = new PexelsEntities();

        // GET: Control/LisenceNotAllows
        public ActionResult Index()
        {
            return View(db.LisenceNotAllows.ToList());
        }

        // GET: Control/LisenceNotAllows/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LisenceNotAllows lisenceNotAllows = db.LisenceNotAllows.Find(id);
            if (lisenceNotAllows == null)
            {
                return HttpNotFound();
            }
            return View(lisenceNotAllows);
        }

        // GET: Control/LisenceNotAllows/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Control/LisenceNotAllows/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,NotAllowItem")] LisenceNotAllows lisenceNotAllows)
        {
            if (ModelState.IsValid)
            {
                db.LisenceNotAllows.Add(lisenceNotAllows);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(lisenceNotAllows);
        }

        // GET: Control/LisenceNotAllows/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LisenceNotAllows lisenceNotAllows = db.LisenceNotAllows.Find(id);
            if (lisenceNotAllows == null)
            {
                return HttpNotFound();
            }
            return View(lisenceNotAllows);
        }

        // POST: Control/LisenceNotAllows/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,NotAllowItem")] LisenceNotAllows lisenceNotAllows)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lisenceNotAllows).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(lisenceNotAllows);
        }

        // GET: Control/LisenceNotAllows/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LisenceNotAllows lisenceNotAllows = db.LisenceNotAllows.Find(id);
            if (lisenceNotAllows == null)
            {
                return HttpNotFound();
            }
            return View(lisenceNotAllows);
        }

        // POST: Control/LisenceNotAllows/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            LisenceNotAllows lisenceNotAllows = db.LisenceNotAllows.Find(id);
            db.LisenceNotAllows.Remove(lisenceNotAllows);
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
