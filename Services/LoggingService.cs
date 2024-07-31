using ilkDeneme.Entities.Concrete;
using System.Threading.Tasks;
using System;

public class LoggingService : ILoggingService
{
    private readonly ApplicationDbContext _context;

    public LoggingService(ApplicationDbContext context)
    {
        _context = context;
    }

    public async Task LogAction(int kullaniciId, int durumId, int islemTipId, string aciklama, string ip)
    {
        var log = new Log
        {
            KullaniciId = kullaniciId,
            DurumId = durumId,
            IslemTipId = islemTipId,
            Aciklama = aciklama,
            TarihSaat = DateTime.Now,
            KullaniciIp = ip
        };

        _context.Logs.Add(log);
        await _context.SaveChangesAsync();
    }
}
