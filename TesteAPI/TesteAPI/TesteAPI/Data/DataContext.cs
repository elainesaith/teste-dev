using Microsoft.EntityFrameworkCore;
using TesteAPI.Models;

namespace TesteAPI.Data
{
    public class DataContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
            optionsBuilder.UseSqlServer("Server=localhost\\sqlexpress;Database=teste_autoglass;User Id=sa;Password=masterkey;");
        }

        public DbSet<Fornecedor> Fornecedores { get; set; }
        public DbSet<Produto> Produtos { get; set; }
    }
}
