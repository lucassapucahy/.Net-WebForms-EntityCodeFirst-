namespace Data.Context
{
    using Domain.Enities;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.ModelConfiguration.Conventions;
    using System.Linq;

    public class EstoqueWebFormsContext : DbContext
    {
        public EstoqueWebFormsContext()
            : base("name=EstoqueWebFormsContext")
        {

        }

        public DbSet<Item> Items { get; set; }
        public DbSet<Categoria> Categorias { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();

            modelBuilder.Entity<Item>()
                .HasKey(x => x.Id)
                .HasOptional(x=>x.Categoria);


        }
    }

}