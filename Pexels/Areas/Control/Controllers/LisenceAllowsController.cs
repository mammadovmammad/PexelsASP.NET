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
    public class LisenceAllowsController : Controller
    {
        private PexelsEntities db = new PexelsEntities();

        // GET: Control/LisenceAllows
        public ActionResult Index()
        {
            return View(db.LisenceAllows.ToList());
        }

        // GET: Control/LisenceAllows/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LisenceAllows lisenceAllows = db.LisenceAllows.Find(id);
            if (lisenceAllows == null)
            {
                return HttpNotFound();
            }
            return View(lisenceAllows);
        }

        // GET: Control/LisenceAllows/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Control/LisenceAllows/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,AllowItem")] LisenceAllows lisenceAllows)
        {
            if (ModelState.IsValid)
            {
                db.LisenceAllows.Add(lisenceAllows);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(lisenceAllows);
        }

        // GET: Control/LisenceAllows/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LisenceAllows lisenceAllows = db.LisenceAllows.Find(id);
            if (lisenceAllows == null)
            {
                return HttpNotFound();
            }
            return View(lisenceAllows);
        }

        // POST: Control/LisenceAllows/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,AllowItem")] LisenceAllows lisenceAllows)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lisenceAllows).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(lisenceAllows);
        }

        // GET: Control/LisenceAllows/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LisenceAllows lisenceAllows = db.LisenceAllows.Find(id);
            if (lisenceAllows == null)
            {
                return HttpNotFound();
            }
            return View(lisenceAllows);
        }

        // POST: Control/LisenceAllows/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            LisenceAllows lisenceAllows = db.LisenceAllows.Find(id);
            db.LisenceAllows.Remove(lisenceAllows);
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
