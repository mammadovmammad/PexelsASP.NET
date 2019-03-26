using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace Pexels.Models
{
    public static class Extensions
    {
        public static bool CheckImageType(HttpPostedFileBase img)
        {
            return img.ContentType == "img/jpg" || img.ContentType == "img/jpeg" || img.ContentType == "img/png" ||
                   img.ContentType == "img/gif";
        }

        public static bool CheckImageSize(HttpPostedFileBase img, int mb)
        {
            return img.ContentLength / 1024 / 1024 < mb;
        }

        public static string SaveImage(string folder, HttpPostedFileBase img)
        {
            //string filename = Guid.NewGuid() + Path.GetFileName(Image.FileName);
            string filename = DateTime.Now.ToString("yyyy_MM_dd_hh_mm_ss") + Path.GetFileName(img.FileName);

            string path = Path.Combine(folder, filename);

            img.SaveAs(path);

            return filename;
        }

    }
}