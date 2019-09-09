namespace CodeFirstWindform.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Tbl_Employee",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Ename = c.String(),
                        Salary = c.Int(nullable: false),
                        Deptid = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Tbl_Employee");
        }
    }
}
