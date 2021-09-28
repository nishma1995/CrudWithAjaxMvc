
using CrudWithAjaxMvc.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CrudWithAjaxMvc.Controllers
{
    public class HomeController : Controller
    {
        EmployeeManagementSystemEntities employeeManagementSystemEntities = new EmployeeManagementSystemEntities();
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult GetEmployeeList()
        {
            List<EmployeeViewModel> employeeList = employeeManagementSystemEntities.Employees.Where(x => x.IsDeleted == false).Select(x => new EmployeeViewModel
            {
                Id = x.Id,
                Name = x.Name,
                DateOfBirth = x.DateOfBirth,
                PhoneNumber = x.PhoneNumber
            }).ToList();
            return Json(employeeList, JsonRequestBehavior.AllowGet);
        }
    }
}