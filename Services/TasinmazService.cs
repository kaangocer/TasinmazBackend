using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ilkDeneme.Entities.Concrete;
using Microsoft.EntityFrameworkCore;

namespace ilkDeneme.Services
{
    public class TasinmazService:ITasinmazInterface
    {
        private readonly ApplicationDbContext _context;

        public TasinmazService(ApplicationDbContext context)
        {
            _context = context;
        }

        // Tüm taşınmazları getir
        public async Task<List<Tasinmaz>> GetAllTasinmazlarAsync()
        {
            return await _context.Tasinmazlar
       .Include(t => t.Mahalle).ThenInclude(t=> t.Ilce).ThenInclude(t=>t.Il)  // Mahalle bilgilerini include et
       .ToListAsync();
        }

        // Id'ye göre taşınmaz getir
        public async Task<Tasinmaz> GetTasinmazByIdAsync(int id)
        {
            return await _context.Tasinmazlar
            .Include(t => t.Mahalle)
                .ThenInclude(m => m.Ilce)
                    .ThenInclude(i => i.Il)
            .FirstOrDefaultAsync(t => t.TasinmazId == id);
        }

        // Yeni taşınmaz ekle
        public async Task<Tasinmaz> AddTasinmazAsync(Tasinmaz tasinmaz)
        {
            _context.Tasinmazlar.Add(tasinmaz);
            await _context.SaveChangesAsync();
            return tasinmaz;
        }

        // Taşınmazı güncelle
        public async Task<Tasinmaz> UpdateTasinmazAsync(Tasinmaz tasinmaz)
        {
            _context.Entry(tasinmaz).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            return tasinmaz;
        }

        // Taşınmazı sil
        public async Task DeleteTasinmazAsync(int id)
        {
            var tasinmaz = await _context.Tasinmazlar.FindAsync(id);
            if (tasinmaz != null)
            {
                _context.Tasinmazlar.Remove(tasinmaz);
                await _context.SaveChangesAsync();
            }
        }
        public async Task DeleteTasinmazlarAsync(List<int> ids)
        {
            var tasinmazlar = await _context.Tasinmazlar.Where(t => ids.Contains(t.TasinmazId)).ToListAsync();
            _context.Tasinmazlar.RemoveRange(tasinmazlar);
            await _context.SaveChangesAsync();
        }


        /* public async Task<IEnumerable<Tasinmaz>> GetByKullaniciIdAsync(int kullaniciId)
         {
             return await _context.Tasinmazlar
                 .Where(t => t.KullaniciId == kullaniciId)
                 .ToListAsync();
         }*/


        public async Task<IEnumerable<Tasinmaz>> GetByKullaniciIdAsync(int kullaniciId)
        {
            return await _context.Tasinmazlar
                .Include(t => t.Mahalle) // Mahalle bilgilerini dahil et
                .ThenInclude(m => m.Ilce) // Ilce bilgilerini dahil et
                .ThenInclude(i => i.Il)   // Il bilgilerini dahil et
                .Where(t => t.KullaniciId == kullaniciId)
                .ToListAsync();
        }
    }
}