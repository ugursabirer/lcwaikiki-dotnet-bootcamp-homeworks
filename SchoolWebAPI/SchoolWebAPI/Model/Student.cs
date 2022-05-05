using SchoolWebAPI.Utilities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace SchoolWebAPI.Model
{
    public class Student : StudentBaseEntity
    {
        [Required]
        public int StudentId { get; set; }

        [Required]
        public string FullName { get; set; }

        [Required]
        public string Class { get; set; }
    }
}
