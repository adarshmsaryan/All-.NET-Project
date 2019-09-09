using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnonymousType
{
    class Program
    {
        static void Main(string[] args)
        {
            var emp = new
            {
                ecode = 101,
            };
            Console.WriteLine(emp.ecode);
        }
    }
    class employee
    {
        public int ecode { get; set; }
    }
}
