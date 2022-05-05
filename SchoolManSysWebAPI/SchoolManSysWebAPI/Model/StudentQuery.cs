using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SchoolManSysWebAPI.Model
{
    public class StudentQuery
    {
        [Required]
        public string FullName { get; set; } 
    }
}
