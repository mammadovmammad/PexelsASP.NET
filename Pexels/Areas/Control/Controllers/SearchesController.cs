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
    public class SearchesController : Controller
    {
        private PexelsEntities db = new PexelsEntities();

        // GET: Control/Searches
        public ActionResult Index()
        {
            return View(db.Searches.ToList());
        }

        // GET: Control/Searches/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Searches searches = db.Searches.Find(id);
            if (searches == null)
            {
                return HttpNotFound();
            }
            return View(searches);
        }

        // GET: Control/Searches/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Control/Searches/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Title,Photo")] Searches searches)
        {
            if (ModelState.IsValid)
            {
                db.Searches.Add(searches);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(searches);
        }

        // GET: Control/Searches/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Searches searches = db.Searches.Find(id);
            if (searches == null)
            {
                return HttpNotFound();
            }
            return View(searches);
        }

        // POST: Control/Searches/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Title,Photo")] Searches searches)
        {
            if (ModelState.IsValid)
            {
                db.Entry(searches).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(searches);
        }

        // GET: Control/Searches/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Searches searches = db.Searches.Find(id);
            if (searches == null)
            {
                return HttpNotFound();
            }
            return View(searches);
        }

        // POST: Control/Searches/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Searches searches = db.Searches.Find(id);
            db.Searches.Remove(searches);
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
