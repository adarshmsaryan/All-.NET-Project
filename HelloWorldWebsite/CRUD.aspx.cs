using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFDalLib;

public partial class CRUD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EFDal dal = new EFDal();
        gv.DataSource = dal.GetAllEmps();
        gv.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var record = new tbl_employee
        {
            Ecode = int.Parse(textecode.Text),
            Ename = textename.Text,
            Salary = int.Parse(textsalary.Text),
            Deptid = int.Parse(textdepid.Text)
        };
        EFDal dal = new EFDal();
        dal.AddEmployee(record);
        Label1.Text = "Inserted Successfully!!!";
        
        

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
       
        EFDal dal = new EFDal();
        var record = new tbl_employee
        {
             Ecode = int.Parse(textecode.Text),
             Salary = int.Parse(textsalary.Text),
        };

        dal.updateEmp(record);
        Label1.Text = "Updated Successfully!!!";
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        var ecode = int.Parse(textecode.Text);
        
        EFDal dal = new EFDal();
        dal.DeleteEmployee(ecode);
        Label1.Text = "Deleted Successfully!!!";

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        var ecode = int.Parse(textecode.Text);
        EFDal dal = new EFDal();
        
        var a=dal.GetEmpByid(ecode);
        textename.Text = a.Ename;
        textsalary.Text= a.Salary.ToString();
        textdepid.Text = a.Deptid.ToString();
        Label1.Text=a.Ename;
        

    }
}