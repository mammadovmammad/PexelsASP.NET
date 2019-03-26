using System.Web.Mvc;

namespace Pexels.Areas.Control
{
    public class ControlAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Control";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Control_default",
                "Control/{controller}/{action}/{id}",
                new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                new[] { "Pexels.Areas.Control.Controllers" }
            );
        }
    }
}