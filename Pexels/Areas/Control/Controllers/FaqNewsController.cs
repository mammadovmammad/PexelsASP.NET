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
    public class FaqNewsController : Controller
    {
        private PexelsEntities db = new PexelsEntities();

        // GET: Control/FaqNews
        public ActionResult Index()
        {
            return View(db.FaqNews.ToList());
        }

        // GET: Control/FaqNews/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FaqNews faqNews = db.FaqNews.Find(id);
            if (faqNews == null)
            {
                return HttpNotFound();
            }
            return View(faqNews);
        }

        // GET: Control/FaqNews/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Control/FaqNews/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Title,Text")] FaqNews faqNews)
        {
            if (ModelState.IsValid)
            {
                db.FaqNews.Add(faqNews);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(faqNews);
        }

        // GET: Control/FaqNews/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FaqNews faqNews = db.FaqNews.Find(id);
            if (faqNews == null)
            {
                return HttpNotFound();
            }
            return View(faqNews);
        }

        // POST: Control/FaqNews/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Title,Text")] FaqNews faqNews)
        {
            if (ModelState.IsValid)
            {
                db.Entry(faqNews).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(faqNews);
        }

        // GET: Control/FaqNews/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FaqNews faqNews = db.FaqNews.Find(id);
            if (faqNews == null)
            {
                return HttpNotFound();
            }
            return View(faqNews);
        }

        // POST: Control/FaqNews/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            FaqNews faqNews = db.FaqNews.Find(id);
            db.FaqNews.Remove(faqNews);
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
