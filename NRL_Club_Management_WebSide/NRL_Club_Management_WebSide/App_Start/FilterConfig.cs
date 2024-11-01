using System.Web;
using System.Web.Mvc;

namespace NRL_Club_Management_WebSide
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
