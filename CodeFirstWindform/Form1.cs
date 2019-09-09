using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CodeFirstWindform
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Btninsert_Click(object sender, EventArgs e)
        {
            using (var dbCtx = new EmpDBContext())
            {
                //take user input for insert
                var record = new Tbl_Employee
                {
                    EmpId = int.Parse(textecode.Text),
                    Ename = textename.Text,
                    Salary = int.Parse(textsalary.Text),
                    Deptid = int.Parse(textdeptid.Text)
                };

                dbCtx.tbl_employee.Add(record);
                dbCtx.SaveChanges();
                MessageBox.Show("inserted successfully");
                dgv.DataSource = dbCtx.tbl_employee.ToList();
            }                
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            using (var dbCtx = new EmpDBContext())
            { 
                dgv.DataSource = dbCtx.tbl_employee.ToList();
            }
        }

        private void Btndelete_Click(object sender, EventArgs e)
        {
          
            int ecode = int.Parse(textecode.Text);
            var dbctx = new EmpDBContext();
            var result = dbctx.tbl_employee.Where(o => o.EmpId==ecode).SingleOrDefault();
            dbctx.tbl_employee.Remove(result);
            dbctx.SaveChanges();
            MessageBox.Show("yakanna delete madya");
            dgv.DataSource = dbctx.tbl_employee.ToList();
        

    }
    }
}
