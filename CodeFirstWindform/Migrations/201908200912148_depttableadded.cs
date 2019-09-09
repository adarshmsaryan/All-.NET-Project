namespace CodeFirstWindform.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class depttableadded : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Tbl_Department",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Dname = c.String(),
                        Dhead = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            AddColumn("dbo.Tbl_Employee", "Department_Id", c => c.Int());
            CreateIndex("dbo.Tbl_Employee", "Department_Id");
            AddForeignKey("dbo.Tbl_Employee", "Department_Id", "dbo.Tbl_Department", "Id");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Tbl_Employee", "Department_Id", "dbo.Tbl_Department");
            DropIndex("dbo.Tbl_Employee", new[] { "Department_Id" });
            DropColumn("dbo.Tbl_Employee", "Department_Id");
            DropTable("dbo.Tbl_Department");
        }
    }
}
