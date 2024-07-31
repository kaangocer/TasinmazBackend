using ilkDeneme.Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

public class LogService
{
    private readonly ApplicationDbContext _context;

    public LogService(ApplicationDbContext context)
    {
        _context = context;
    }

    public async Task<List<Log>> GetLogsAsync(LogFilterDTO filter)
    {
        var query = _context.Logs.AsQueryable();

        if (filter.KullaniciId.HasValue)
        {
            query = query.Where(l => l.KullaniciId == filter.KullaniciId.Value);
        }

        if (filter.IslemTipId.HasValue)
        {
            query = query.Where(l => l.IslemTipId == filter.IslemTipId.Value);
        }

        if (filter.DurumId.HasValue)
        {
            query = query.Where(l => l.DurumId == filter.DurumId.Value);
        }

        if (!string.IsNullOrEmpty(filter.Aciklama))
        {
            query = query.Where(l => l.Aciklama.Contains(filter.Aciklama));
        }

        if (filter.TarihSaat.HasValue)
        {
            query = query.Where(l => l.TarihSaat.Date == filter.TarihSaat.Value.Date);
        }

        // Diğer filtreleme işlemleri burada...

        return await query.ToListAsync();   
    }

    public async Task AddLogAsync(Log log)
    {
        _context.Logs.Add(log);
        await _context.SaveChangesAsync();
    }
}
