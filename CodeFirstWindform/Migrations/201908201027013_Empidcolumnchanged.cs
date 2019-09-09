namespace CodeFirstWindform.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Empidcolumnchanged : DbMigration
    {
        public override void Up()
        {
            DropPrimaryKey("dbo.Tbl_Employee");
            AddColumn("dbo.Tbl_Employee", "EmpId", c => c.Int(nullable: false));
            AddPrimaryKey("dbo.Tbl_Employee", "EmpId");
            DropColumn("dbo.Tbl_Employee", "Id");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Tbl_Employee", "Id", c => c.Int(nullable: false, identity: true));
            DropPrimaryKey("dbo.Tbl_Employee");
            DropColumn("dbo.Tbl_Employee", "EmpId");
            AddPrimaryKey("dbo.Tbl_Employee", "Id");
        }
    }
}
