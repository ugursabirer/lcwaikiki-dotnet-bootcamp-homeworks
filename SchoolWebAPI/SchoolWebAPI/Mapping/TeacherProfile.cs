using AutoMapper;
using SchoolWebAPI.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SchoolWebAPI.Mapping
{
    public class TeacherProfile : Profile
    {
        public TeacherProfile()
        {
            CreateMap<TeacherQuery, Teacher>();

            CreateMap<Teacher, Teacher>();        
        }
    }
}
