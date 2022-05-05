using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SchoolWebAPI.Model
{
    public class TeacherQuery
    {
        [Required]
        public string FullName { get; set; }
    }
}
