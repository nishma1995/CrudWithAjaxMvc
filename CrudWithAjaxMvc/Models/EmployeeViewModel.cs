using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudWithAjaxMvc.Models
{
    public class EmployeeViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public System.DateTime DateOfBirth { get; set; }
        public string PhoneNumber { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
    }
}