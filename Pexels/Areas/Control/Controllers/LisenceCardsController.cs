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
    public class LisenceCardsController : Controller
    {
        private PexelsEntities db = new PexelsEntities();

        // GET: Control/LisenceCards
        public ActionResult Index()
        {
            return View(db.LisenceCards.ToList());
        }

        // GET: Control/LisenceCards/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LisenceCards lisenceCards = db.LisenceCards.Find(id);
            if (lisenceCards == null)
            {
                return HttpNotFound();
            }
            return View(lisenceCards);
        }

        // GET: Control/LisenceCards/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Control/LisenceCards/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Photo,Title,Text")] LisenceCards lisenceCards)
        {
            if (ModelState.IsValid)
            {
                db.LisenceCards.Add(lisenceCards);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(lisenceCards);
        }

        // GET: Control/LisenceCards/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LisenceCards lisenceCards = db.LisenceCards.Find(id);
            if (lisenceCards == null)
            {
                return HttpNotFound();
            }
            return View(lisenceCards);
        }

        // POST: Control/LisenceCards/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Photo,Title,Text")] LisenceCards lisenceCards)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lisenceCards).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(lisenceCards);
        }

        // GET: Control/LisenceCards/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LisenceCards lisenceCards = db.LisenceCards.Find(id);
            if (lisenceCards == null)
            {
                return HttpNotFound();
            }
            return View(lisenceCards);
        }

        // POST: Control/LisenceCards/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            LisenceCards lisenceCards = db.LisenceCards.Find(id);
            db.LisenceCards.Remove(lisenceCards);
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
