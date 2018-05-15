using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AboutUs.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to ASP.NET MVC by Joey!";
            

            return View();
        }

        public ActionResult About()
        {
            ViewData["Message"] = "About Us:";

            return View();
        }

        public ActionResult Contact()
        {
            ViewData["Message"] = "Contact";
            return View();
        }
    }
}
