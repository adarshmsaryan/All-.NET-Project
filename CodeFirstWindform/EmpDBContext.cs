using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity;
using System.Threading.Tasks;

namespace CodeFirstWindform
{
    class EmpDBContext :DbContext
    {
        public EmpDBContext()
            :base("name=sqlconstr")
        {

        }
        public virtual DbSet<Tbl_Employee> tbl_employee { get; set; }
        public virtual DbSet<Tbl_Department> tbl_department { get; set; }
    }
}
