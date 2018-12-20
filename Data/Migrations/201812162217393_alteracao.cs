namespace Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class alteracao : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Item", "Quantidade", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Item", "Quantidade");
        }
    }
}
