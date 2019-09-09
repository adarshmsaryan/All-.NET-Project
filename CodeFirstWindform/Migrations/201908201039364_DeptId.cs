namespace CodeFirstWindform.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class DeptId : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Tbl_Employee", "Department_Id", "dbo.Tbl_Department");
            RenameColumn(table: "dbo.Tbl_Employee", name: "Department_Id", newName: "Department_DepId");
            RenameIndex(table: "dbo.Tbl_Employee", name: "IX_Department_Id", newName: "IX_Department_DepId");
            DropPrimaryKey("dbo.Tbl_Department");
            AddColumn("dbo.Tbl_Department", "DepId", c => c.Int(nullable: false));
            AddPrimaryKey("dbo.Tbl_Department", "DepId");
            AddForeignKey("dbo.Tbl_Employee", "Department_DepId", "dbo.Tbl_Department", "DepId");
            DropColumn("dbo.Tbl_Department", "Id");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Tbl_Department", "Id", c => c.Int(nullable: false, identity: true));
            DropForeignKey("dbo.Tbl_Employee", "Department_DepId", "dbo.Tbl_Department");
            DropPrimaryKey("dbo.Tbl_Department");
            DropColumn("dbo.Tbl_Department", "DepId");
            AddPrimaryKey("dbo.Tbl_Department", "Id");
            RenameIndex(table: "dbo.Tbl_Employee", name: "IX_Department_DepId", newName: "IX_Department_Id");
            RenameColumn(table: "dbo.Tbl_Employee", name: "Department_DepId", newName: "Department_Id");
            AddForeignKey("dbo.Tbl_Employee", "Department_Id", "dbo.Tbl_Department", "Id");
        }
    }
}
