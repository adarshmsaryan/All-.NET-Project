namespace CodeFirstWindform.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class deptcolumnchanged : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Tbl_Department", "DeptName", c => c.String());
            DropColumn("dbo.Tbl_Department", "Dname");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Tbl_Department", "Dname", c => c.String());
            DropColumn("dbo.Tbl_Department", "DeptName");
        }
    }
}
