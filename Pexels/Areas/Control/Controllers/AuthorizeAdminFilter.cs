using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Pexels.Areas.Control.Controllers
{
    public class AuthorizeAdminFilter : AuthorizeAttribute, IAuthorizationFilter
    {
        // GET: Control/AuthorizeAdminFilter
        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            if (filterContext.ActionDescriptor.IsDefined(typeof(AllowAnonymousAttribute),true)||filterContext.ActionDescriptor.ControllerDescriptor.IsDefined(typeof(AllowAnonymousAttribute),true))
            {
                return;
            }

            if (HttpContext.Current.Session["Adminlogged"] == null)
            {
                filterContext.Result =new RedirectResult("/Control/Account/Login");
            }
        }
    }
}