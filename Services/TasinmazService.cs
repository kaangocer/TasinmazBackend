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
                var errorMessage = "Alanlar boş olamaz!";
                await _loggingService.LogAction(kullaniciId, 2, 1, errorMessage, ipAddress);
                throw new ArgumentNullException(nameof(tasinmaz), errorMessage);
            }

            // Verilerin boş veya geçersiz olup olmadığını kontrol edin
            if (string.IsNullOrEmpty(tasinmaz.Ada) || string.IsNullOrEmpty(tasinmaz.Parsel) ||
                string.IsNullOrEmpty(tasinmaz.Nitelik) || string.IsNullOrEmpty(tasinmaz.KoordinatBilgileri))
            {
                var errorMessage = "Alanlar boş olmamalı ! Ada, Parsel, Nitelik ve KoordinatBilgileri";
                await _loggingService.LogAction(kullaniciId, 2, 1, errorMessage, ipAddress);
                throw new ArgumentException(errorMessage);
            }

            // İlişkili verileri kontrol et ve gerekirse ekle
            if (tasinmaz.Mahalle != null)
            {
                if (tasinmaz.Mahalle.Ilce != null)
                {
                    if (tasinmaz.Mahalle.Ilce.Il != null)
                    {
                        // İl kontrolü ve ekleme
                        var existingIl = await _context.Iller
                            .FirstOrDefaultAsync(i => i.IlId == tasinmaz.Mahalle.Ilce.Il.IlId);
                        if (existingIl == null)
                        {
                            _context.Iller.Add(tasinmaz.Mahalle.Ilce.Il);
                        }
                    }

                    // İlçe kontrolü ve ekleme
                    var existingIlce = await _context.Ilceler
                        .FirstOrDefaultAsync(i => i.IlceId == tasinmaz.Mahalle.Ilce.IlceId);
                    if (existingIlce == null)
                    {
                        _context.Ilceler.Add(tasinmaz.Mahalle.Ilce);
                    }
                }

                // Mahalle kontrolü ve ekleme
                var existingMahalle = await _context.Mahalleler
                    .FirstOrDefaultAsync(m => m.MahalleId == tasinmaz.Mahalle.MahalleId);
                if (existingMahalle == null)
                {
                    _context.Mahalleler.Add(tasinmaz.Mahalle);
                }
            }

            try
            {
                // Veritabanındaki mevcut en yüksek tasinmazId'yi bul
                var maxTasinmazId = await _context.Tasinmazlar
                    .OrderByDescending(t => t.TasinmazId)
                    .Select(t => t.TasinmazId)
                    .FirstOrDefaultAsync();

                // Yeni tasinmazId'yi belirle
                tasinmaz.TasinmazId = maxTasinmazId + 1;

                _context.Tasinmazlar.Add(tasinmaz);
                await _context.SaveChangesAsync();

                var addedTasinmaz = await _context.Tasinmazlar
                           .Include(t => t.Mahalle)
                               .ThenInclude(m => m.Ilce)
                                   .ThenInclude(i => i.Il)
                           .FirstOrDefaultAsync(t => t.TasinmazId == tasinmaz.TasinmazId);

                // Loglama işlemi başarılı olduğunda
                var logMessage = $"Kullanıcı Id: {kullaniciId} bir taşınmaz ekledi. " +
                                 $"İl: {addedTasinmaz.Mahalle?.Ilce?.Il?.IlAdi}, İlçe: {addedTasinmaz.Mahalle?.Ilce?.IlceAdi}, " +
                                 $"Mahalle: {addedTasinmaz.Mahalle?.MahalleAdi}, Ada: {addedTasinmaz.Ada}, Parsel: {addedTasinmaz.Parsel}, " +
                                 $"Nitelik: {addedTasinmaz.Nitelik}, Koordinat Bilgileri: {addedTasinmaz.KoordinatBilgileri}";
                await _loggingService.LogAction(kullaniciId, 1, 1, logMessage, ipAddress);

                return addedTasinmaz;
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
                var errorMessage = "Alanlar boş olamaz !";
                await _loggingService.LogAction(kullaniciId, 2, 2, errorMessage, ipAddress);
                throw new ArgumentNullException(nameof(tasinmaz), errorMessage);
            }

            if (string.IsNullOrEmpty(tasinmaz.Ada) || string.IsNullOrEmpty(tasinmaz.Parsel) ||
                string.IsNullOrEmpty(tasinmaz.Nitelik) || string.IsNullOrEmpty(tasinmaz.KoordinatBilgileri))
            {
                var errorMessage = "Alanlar boş olmamalı ! Ada, Parsel, Nitelik ve KoordinatBilgileri";
                await _loggingService.LogAction(kullaniciId, 2, 2, errorMessage, ipAddress);
                throw new ArgumentException(errorMessage);
            }

            try
            {
                // Taşınmazı ve ilişkili verileri yükleyin
                var existingTasinmaz = await _context.Tasinmazlar
                    .Include(t => t.Mahalle)
                        .ThenInclude(m => m.Ilce)
                            .ThenInclude(i => i.Il)
                    .FirstOrDefaultAsync(t => t.TasinmazId == tasinmaz.TasinmazId);

                if (existingTasinmaz == null)
                {
                    var errorMessage = "Property not found.";
                    await _loggingService.LogAction(kullaniciId, 2, 2, errorMessage, ipAddress);
                    throw new InvalidOperationException(errorMessage);
                }

                // Önceki değerleri kaydedin
                var oldIl = existingTasinmaz.Mahalle?.Ilce?.Il?.IlAdi ?? "N/A";
                var oldIlce = existingTasinmaz.Mahalle?.Ilce?.IlceAdi ?? "N/A";
                var oldMahalle = existingTasinmaz.Mahalle?.MahalleAdi ?? "N/A";
                var oldAda = existingTasinmaz.Ada ?? "N/A";
                var oldParsel = existingTasinmaz.Parsel ?? "N/A";
                var oldNitelik = existingTasinmaz.Nitelik ?? "N/A";
                var oldKoordinatBilgileri = existingTasinmaz.KoordinatBilgileri ?? "N/A";

                // Güncellenmiş taşınmaz bilgilerini mevcut taşınmaza uygula
                _context.Entry(existingTasinmaz).CurrentValues.SetValues(tasinmaz);

                // İl, ilçe ve mahalle bilgilerini güncelle
                if (tasinmaz.Mahalle != null)
                {
                    if (tasinmaz.Mahalle.Ilce != null)
                    {
                        if (tasinmaz.Mahalle.Ilce.Il != null)
                        {
                            // İl güncelleme işlemi
                            var existingIl = await _context.Iller
                                .FirstOrDefaultAsync(i => i.IlId == tasinmaz.Mahalle.Ilce.Il.IlId);
                            if (existingIl == null)
                            {
                                _context.Iller.Add(tasinmaz.Mahalle.Ilce.Il);
                            }
                            else
                            {
                                _context.Entry(existingIl).CurrentValues.SetValues(tasinmaz.Mahalle.Ilce.Il);
                            }
                        }

                        // İlçe güncelleme işlemi
                        var existingIlce = await _context.Ilceler
                            .FirstOrDefaultAsync(i => i.IlceId == tasinmaz.Mahalle.Ilce.IlceId);
                        if (existingIlce == null)
                        {
                            _context.Ilceler.Add(tasinmaz.Mahalle.Ilce);
                        }
                        else
                        {
                            _context.Entry(existingIlce).CurrentValues.SetValues(tasinmaz.Mahalle.Ilce);
                        }
                    }

                    // Mahalle güncelleme işlemi
                    var existingMahalle = await _context.Mahalleler
                        .FirstOrDefaultAsync(m => m.MahalleId == tasinmaz.Mahalle.MahalleId);
                    if (existingMahalle == null)
                    {
                        _context.Mahalleler.Add(tasinmaz.Mahalle);
                    }
                    else
                    {
                        _context.Entry(existingMahalle).CurrentValues.SetValues(tasinmaz.Mahalle);
                    }
                }

                await _context.SaveChangesAsync();

                // Loglama işlemi başarılı olduğunda, güncellenmiş verileri tekrar yükleyin
                var updatedTasinmaz = await _context.Tasinmazlar
                    .Include(t => t.Mahalle)
                        .ThenInclude(m => m.Ilce)
                            .ThenInclude(i => i.Il)
                    .FirstOrDefaultAsync(t => t.TasinmazId == tasinmaz.TasinmazId);

                // Yeni değerleri al
                var newIl = updatedTasinmaz.Mahalle?.Ilce?.Il?.IlAdi ?? "N/A";
                var newIlce = updatedTasinmaz.Mahalle?.Ilce?.IlceAdi ?? "N/A";
                var newMahalle = updatedTasinmaz.Mahalle?.MahalleAdi ?? "N/A";
                var newAda = updatedTasinmaz.Ada ?? "N/A";
                var newParsel = updatedTasinmaz.Parsel ?? "N/A";
                var newNitelik = updatedTasinmaz.Nitelik ?? "N/A";
                var newKoordinatBilgileri = updatedTasinmaz.KoordinatBilgileri ?? "N/A";

                // Loglama
                var logMessage = $"Kullanıcı Id: {kullaniciId} taşınmaz güncelledi. " +
                                  $"İl: '{oldIl}' -> '{newIl}', " +
                                  $"İlçe: '{oldIlce}' -> '{newIlce}', " +
                                  $"Mahalle: '{oldMahalle}' -> '{newMahalle}', " +
                                  $"Ada: '{oldAda}' -> '{newAda}', " +
                                  $"Parsel: '{oldParsel}' -> '{newParsel}', " +
                                  $"Nitelik: '{oldNitelik}' -> '{newNitelik}', " +
                                  $"Koordinat Bilgileri: '{oldKoordinatBilgileri}' -> '{newKoordinatBilgileri}'";

                await _loggingService.LogAction(kullaniciId, 1, 2, logMessage, ipAddress);

                return updatedTasinmaz;
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
            var tasinmaz = await _context.Tasinmazlar
                .Include(t => t.Mahalle)
                    .ThenInclude(m => m.Ilce)
                        .ThenInclude(i => i.Il)
                .FirstOrDefaultAsync(t => t.TasinmazId == id);

            if (tasinmaz != null)
            {
                try
                {
                    // Silme işlemini gerçekleştir
                    _context.Tasinmazlar.Remove(tasinmaz);
                    await _context.SaveChangesAsync();

                    // Detaylı loglama işlemi başarılı olduğunda
                    var logMessage = $"Kullanıcı Id: {kullaniciId} taşınmazı sildi. " +
                                     $"İl: {tasinmaz.Mahalle?.Ilce?.Il?.IlAdi ?? "N/A"}, " +
                                     $"İlçe: {tasinmaz.Mahalle?.Ilce?.IlceAdi ?? "N/A"}, " +
                                     $"Mahalle: {tasinmaz.Mahalle?.MahalleAdi ?? "N/A"}, " +
                                     $"Ada: {tasinmaz.Ada}, Parsel: {tasinmaz.Parsel}, " +
                                     $"Nitelik: {tasinmaz.Nitelik}, Koordinat Bilgileri: {tasinmaz.KoordinatBilgileri}";
                    await _loggingService.LogAction(kullaniciId, 1, 3, logMessage, ipAddress);
                }
                catch (Exception ex)
                {
                    var errorMessage = $"Failed to delete property with ID {id} - Error: {ex.Message}";
                    await _loggingService.LogAction(kullaniciId, 2, 3, errorMessage, ipAddress);
                    throw;
                }
            }
            else
            {
                // Loglama işlemi başarısız olduğunda
                var logMessage = $"Kullanıcı Id: {kullaniciId} taşınmaz silme işlemi başarısız. Taşınmaz ID {id} bulunamadı.";
                await _loggingService.LogAction(kullaniciId, 2, 3, logMessage, ipAddress);
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


        public async Task<IEnumerable<Tasinmaz>> GetByKullaniciIdAsync(int kullaniciId, string ilAd = null, string ilceAd = null, string mahalleAd = null, string ada = null, string parsel = null, string nitelik = null)
        {
            var query = _context.Tasinmazlar
                .Include(t => t.Mahalle)
                    .ThenInclude(m => m.Ilce)
                        .ThenInclude(i => i.Il)
                .Where(t => t.KullaniciId == kullaniciId);

            if (!string.IsNullOrEmpty(ilAd))
            {
                query = query.Where(t => t.Mahalle.Ilce.Il.IlAdi.Contains(ilAd));
            }

            if (!string.IsNullOrEmpty(ilceAd))
            {
                query = query.Where(t => t.Mahalle.Ilce.IlceAdi.Contains(ilceAd));
            }

            if (!string.IsNullOrEmpty(mahalleAd))
            {
                query = query.Where(t => t.Mahalle.MahalleAdi.Contains(mahalleAd));
            }

            if (!string.IsNullOrEmpty(ada))
            {
                query = query.Where(t => t.Ada.Contains(ada));
            }

            if (!string.IsNullOrEmpty(parsel))
            {
                query = query.Where(t => t.Parsel.Contains(parsel));
            }

            if (!string.IsNullOrEmpty(nitelik))
            {
                query = query.Where(t => t.Nitelik.Contains(nitelik));
            }

            return await query.ToListAsync();
        }


    }
}