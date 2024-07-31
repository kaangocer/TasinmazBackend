using System;
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
        private readonly ILoggingService _loggingService;
        public TasinmazService(ApplicationDbContext context, ILoggingService loggingService)
        {
            _context = context;
            _loggingService = loggingService;
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
        public async Task<Tasinmaz> AddTasinmazAsync(Tasinmaz tasinmaz, int kullaniciId, string ipAddress)
{
    if (tasinmaz == null)
    {
        var errorMessage = "Property data is null.";
        await _loggingService.LogAction(kullaniciId, 2, 1, errorMessage, ipAddress);
        throw new ArgumentNullException(nameof(tasinmaz), errorMessage);
    }

            // Verilerin boş veya geçersiz olup olmadığını kontrol edin
            if (string.IsNullOrEmpty(tasinmaz.Ada) || string.IsNullOrEmpty(tasinmaz.Parsel) ||
                string.IsNullOrEmpty(tasinmaz.Nitelik) || string.IsNullOrEmpty(tasinmaz.KoordinatBilgileri))
            {
                var errorMessage = "Property data is incomplete. Ada, Parsel, Nitelik, and KoordinatBilgileri are required.";
                await _loggingService.LogAction(kullaniciId, 2, 1, errorMessage, ipAddress);
                throw new ArgumentException(errorMessage);
            }

            try
    {
        _context.Tasinmazlar.Add(tasinmaz);
        await _context.SaveChangesAsync();

        // Loglama işlemi başarılı olduğunda
        await _loggingService.LogAction(kullaniciId, 1, 1, $"Added property with ID {tasinmaz.TasinmazId}", ipAddress);

        return tasinmaz;
    }
    catch (DbUpdateException dbEx)
    {
        // Veritabanı güncelleme hataları için özel işlem
        var errorMessage = $"Database update error: {dbEx.Message}";
        await _loggingService.LogAction(kullaniciId, 2, 1, errorMessage, ipAddress);
        throw new InvalidOperationException(errorMessage, dbEx);
    }
    catch (Exception ex)
    {
        // Genel hata durumunda uygun bir yanıt döndürün
        var errorMessage = $"Failed to add property - Error: {ex.Message}";
        await _loggingService.LogAction(kullaniciId, 2, 1, errorMessage, ipAddress);
        throw;
    }
}




        // Taşınmazı güncelle
        public async Task<Tasinmaz> UpdateTasinmazAsync(Tasinmaz tasinmaz, int kullaniciId, string ipAddress)
        {
            if (tasinmaz == null)
            {
                var errorMessage = "Property data is null.";
                await _loggingService.LogAction(kullaniciId, 2, 2, errorMessage, ipAddress);
                throw new ArgumentNullException(nameof(tasinmaz), errorMessage);
            }

            if (string.IsNullOrEmpty(tasinmaz.Ada) || string.IsNullOrEmpty(tasinmaz.Parsel) ||
                string.IsNullOrEmpty(tasinmaz.Nitelik) || string.IsNullOrEmpty(tasinmaz.KoordinatBilgileri))
            {
                var errorMessage = "Property data is incomplete. Ada, Parsel, Nitelik, and KoordinatBilgileri are required.";
                await _loggingService.LogAction(kullaniciId, 2, 2, errorMessage, ipAddress);
                throw new ArgumentException(errorMessage);
            }

            try
            {
                var existingTasinmaz = await _context.Tasinmazlar.FindAsync(tasinmaz.TasinmazId);
                if (existingTasinmaz == null)
                {
                    throw new InvalidOperationException("Property not found.");
                }

                _context.Entry(existingTasinmaz).CurrentValues.SetValues(tasinmaz);

                await _context.SaveChangesAsync();

                return existingTasinmaz;
            }
            catch (DbUpdateException dbEx)
            {
                var errorMessage = $"Database update error: {dbEx.Message}";
                await _loggingService.LogAction(kullaniciId, 2, 2, errorMessage, ipAddress);
                throw new InvalidOperationException(errorMessage, dbEx);
            }
            catch (Exception ex)
            {
                var errorMessage = $"Failed to update property - Error: {ex.Message}";
                await _loggingService.LogAction(kullaniciId, 2, 2, errorMessage, ipAddress);
                throw;
            }
        }



        // Taşınmazı sil
        public async Task DeleteTasinmazAsync(int id, int kullaniciId, string ipAddress)
        {
            var tasinmaz = await _context.Tasinmazlar.FindAsync(id);
            if (tasinmaz != null)
            {
                _context.Tasinmazlar.Remove(tasinmaz);
                await _context.SaveChangesAsync();

                // Loglama işlemi başarılı olduğunda
                await _loggingService.LogAction(kullaniciId, 1, 3, $"Deleted property with ID {id}", ipAddress);
            }
            else
            {
                // Loglama işlemi başarısız olduğunda
                await _loggingService.LogAction(kullaniciId, 2, 3, $"Failed to delete property with ID {id} - not found", ipAddress);
            }
        }

        public async Task DeleteTasinmazlarAsync(List<int> ids, int kullaniciId, string ipAddress)
        {
            var tasinmazlar = await _context.Tasinmazlar.Where(t => ids.Contains(t.TasinmazId)).ToListAsync();
            if (tasinmazlar.Any())
            {
                _context.Tasinmazlar.RemoveRange(tasinmazlar);
                await _context.SaveChangesAsync();

                // Loglama işlemi başarılı olduğunda
                await _loggingService.LogAction(kullaniciId, 1, 3, $"Deleted properties with IDs {string.Join(", ", ids)}", ipAddress);
            }
            else
            {
                // Loglama işlemi başarısız olduğunda
                await _loggingService.LogAction(kullaniciId, 2, 3, $"Failed to delete properties with IDs {string.Join(", ", ids)} - not found", ipAddress);
            }
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