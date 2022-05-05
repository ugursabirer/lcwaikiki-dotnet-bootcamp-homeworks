using AutoMapper;
using SchoolWebAPI.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SchoolWebAPI.Mapping
{
    public class StudentProfile : Profile
    {
        public StudentProfile()
        {
            CreateMap<StudentQuery, Student>();

            CreateMap<Student, StudentQuery>();
        }
    }
}
