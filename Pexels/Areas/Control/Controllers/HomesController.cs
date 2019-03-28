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
    public class HomesController : Controller
    {
        private PexelsEntities db = new PexelsEntities();

        // GET: Control/Homes
        public ActionResult Index()
        {
            return View(db.Homes.ToList());
        }

        // GET: Control/Homes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Homes homes = db.Homes.Find(id);
            if (homes == null)
            {
                return HttpNotFound();
            }
            return View(homes);
        }

        // GET: Control/Homes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Control/Homes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,HeadTitle,Title,Image")] Homes homes)
        {
            if (ModelState.IsValid)
            {
                db.Homes.Add(homes);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(homes);
        }

        // GET: Control/Homes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Homes homes = db.Homes.Find(id);
            if (homes == null)
            {
                return HttpNotFound();
            }
            return View(homes);
        }

        // POST: Control/Homes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,HeadTitle,Title,Image")] Homes homes)
        {
            if (ModelState.IsValid)
            {
                db.Entry(homes).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(homes);
        }

        // GET: Control/Homes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Homes homes = db.Homes.Find(id);
            if (homes == null)
            {
                return HttpNotFound();
            }
            return View(homes);
        }

        // POST: Control/Homes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Homes homes = db.Homes.Find(id);
            db.Homes.Remove(homes);
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
