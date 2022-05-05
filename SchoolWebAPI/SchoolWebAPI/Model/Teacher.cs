using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace SchoolWebAPI.Model
{
    public class Teacher : TeacherBaseEntity
    {
        [Required]
        public int TeacherId { get; set; }

        [Required]
        public string FullName { get; set; }
    }
}
