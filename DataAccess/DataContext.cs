using ilkDeneme.Entities.Concrete;
using Microsoft.EntityFrameworkCore;

public class ApplicationDbContext : DbContext
{

    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
    {

    }
    // DbSet'ler: Veritabanında işlem yapılacak sınıfların DbSet'leri tanımlanır.
    public DbSet<Il> Iller { get; set; }
    public DbSet<Ilce> Ilceler { get; set; }
    public DbSet<Mahalle> Mahalleler { get; set; }
    public DbSet<Tasinmaz> Tasinmazlar { get; set; }

    public DbSet<User> Users { get; set; }


}