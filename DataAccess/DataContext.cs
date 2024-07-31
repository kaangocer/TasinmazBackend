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
    public DbSet<Log> Logs { get; set; }
    public DbSet<Durum> Durumlar { get; set; }
    public DbSet<IslemTip> IslemTipleri { get; set; }
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        

        // Seed verileri
        modelBuilder.Entity<Durum>().HasData(
            new Durum { DurumId = 1, DurumAdi = "Başarılı" },
            new Durum { DurumId = 2, DurumAdi = "Başarısız" }
        );

        modelBuilder.Entity<IslemTip>().HasData(
            new IslemTip { IslemTipId = 1, IslemAdi = "Yeni Kayıt" },
            new IslemTip { IslemTipId = 2, IslemAdi = "Güncelleme" },
            new IslemTip { IslemTipId = 3, IslemAdi = "Silme" },
            new IslemTip { IslemTipId = 4, IslemAdi = "Giriş" }
        );
    }
}