    using System.Collections.Generic;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using ilkDeneme.Entities.Concrete;
    using ilkDeneme.Services;
using System.Linq;
using System.Security.Claims;
using System;
using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;
using ilkDeneme.DTOs;
using Microsoft.AspNetCore.Http;

    namespace ilkDeneme.Controllers
    {
    
    [Route("api/[controller]")]
        [ApiController]
        public class TasinmazController : ControllerBase
        {
            private readonly ITasinmazInterface _tasinmazService;
        private readonly ILoggingService _loggingService;
        public TasinmazController(ITasinmazInterface tasinmazService, ILoggingService loggingService)
            {
                _tasinmazService = tasinmazService;
            _loggingService = loggingService;
        }




            // GET: api/Tasinmaz
            [HttpGet]
            public async Task<ActionResult<List<Tasinmaz>>> GetTasinmazlar()
            {
                var tasinmazlar = await _tasinmazService.GetAllTasinmazlarAsync();
                return Ok(tasinmazlar);
            }

            // GET: api/Tasinmaz/5
            [HttpGet("{id}")]
            public async Task<ActionResult<Tasinmaz>> GetTasinmaz(int id)
            {
                var tasinmaz = await _tasinmazService.GetTasinmazByIdAsync(id);
                if (tasinmaz == null)
                {
                    return NotFound();
                }
                return Ok(tasinmaz);
            }

        [HttpGet("GetByKullaniciId")]
        [Authorize(Roles = "Admin, User")]
        public async Task<IActionResult> GetByKullaniciId(int id, string ilAd = null, string ilceAd = null, string mahalleAd = null, string ada = null, string parsel = null, string nitelik = null)
        {
            // Kullanıcının kimliğini ve rolünü almak için JWT'den Claims bilgilerini okuyun
            var userId = int.Parse(User.FindFirst(ClaimTypes.NameIdentifier)?.Value);
            var userRole = User.FindFirst(ClaimTypes.Role)?.Value;

            // Kullanıcı rolü kontrolü
            if (userRole == "Admin" || id == userId)
            {
                var tasinmazlar = await _tasinmazService.GetByKullaniciIdAsync(id, ilAd, ilceAd, mahalleAd, ada, parsel, nitelik);
                return Ok(tasinmazlar);
            }
            else
            {
                return Forbid(); // 403 Forbidden
            }
        }












        // POST: api/Tasinmaz
        [HttpPost]
        [Authorize(Roles = "Admin, User")] // Sadece Admin ve User rollerine sahip kullanıcıların erişimi
        public async Task<ActionResult<Tasinmaz>> PostTasinmaz(Tasinmaz tasinmaz)
        {
            var kullaniciId = int.Parse(User.FindFirst(ClaimTypes.NameIdentifier)?.Value ?? "0");
            var ipAddress = HttpContext.Connection.RemoteIpAddress?.ToString();

            try
            {
                // Taşınmazı ekleme işlemi
                var newTasinmaz = await _tasinmazService.AddTasinmazAsync(tasinmaz, kullaniciId, ipAddress);
                return CreatedAtAction(nameof(GetTasinmaz), new { id = newTasinmaz.TasinmazId }, newTasinmaz);
            }
            catch (ArgumentNullException ex)
            {
                // Özellikle geçersiz veri durumları için uygun bir yanıt döndürün
                await _loggingService.LogAction(kullaniciId, 2, 1, $"Invalid data: {ex.Message}", ipAddress);
                return BadRequest($"Invalid data: {ex.Message}");
            }
            catch (ArgumentException ex)
            {
                // Eksik veya hatalı veri durumları için uygun bir yanıt döndürün
                await _loggingService.LogAction(kullaniciId, 2, 1, $"Invalid property data: {ex.Message}", ipAddress);
                return BadRequest($"Invalid property data: {ex.Message}");
            }
            catch (Exception ex)
            {
                // Genel hata durumunda uygun bir yanıt döndürün
                await _loggingService.LogAction(kullaniciId, 2, 1, $"Internal server error: {ex.Message}", ipAddress);
                return StatusCode(StatusCodes.Status500InternalServerError, $"Internal server error: {ex.Message}");
            }
        }





        // PUT: api/Tasinmaz/5
        [HttpPut("{id}")]
        [Authorize(Roles = "Admin, User")]
        public async Task<IActionResult> PutTasinmaz(int id, Tasinmaz tasinmaz)
        {
            if (id != tasinmaz.TasinmazId)
            {
                return BadRequest("Property ID mismatch.");
            }

            var kullaniciId = int.Parse(User.FindFirst(ClaimTypes.NameIdentifier)?.Value ?? "0");
            var ipAddress = HttpContext.Connection.RemoteIpAddress?.ToString();
            var userRole = User.FindFirst(ClaimTypes.Role)?.Value;

            try
            {
                // Kullanıcı rolü kontrolü
                if (userRole == "User")
                {
                    var existingTasinmaz = await _tasinmazService.GetTasinmazByIdAsync(id);
                    if (existingTasinmaz == null || existingTasinmaz.KullaniciId != kullaniciId)
                    {
                        return Unauthorized("You are not authorized to update this property.");
                    }
                }

                // Güncellenmiş taşınmaz bilgilerini güncelleme
                var updatedTasinmaz = await _tasinmazService.UpdateTasinmazAsync(tasinmaz, kullaniciId, ipAddress);

                // Güncellenmiş verileri kontrol edin (isteğe bağlı)
                var result = await _tasinmazService.GetTasinmazByIdAsync(id);
                if (result == null)
                {
                    return NotFound("Property not found.");
                }

                return NoContent();
            }
            catch (Exception ex)
            {
                // Loglama işlemi başarısız olduğunda
                await _loggingService.LogAction(kullaniciId, 2, 2, $"Failed to update property with ID {id} - Error: {ex.Message}", ipAddress);
                return StatusCode(StatusCodes.Status500InternalServerError, $"Internal server error: {ex.Message}");
            }
        }








        [HttpDelete("{id}")]
        [Authorize(Roles = "Admin, User")] // Sadece Admin ve User rollerine sahip kullanıcıların erişimi
        public async Task<IActionResult> DeleteTasinmaz(int id)
        {
            var kullaniciId = int.Parse(User.FindFirst(ClaimTypes.NameIdentifier)?.Value ?? "0");
            var ipAddress = HttpContext.Connection.RemoteIpAddress?.ToString();
            var userRole = User.FindFirst(ClaimTypes.Role)?.Value;

            // Eğer kullanıcı User rolündeyse, sadece kendi taşınmazını silebilir
            if (userRole == "User")
            {
                var tasinmaz = await _tasinmazService.GetTasinmazByIdAsync(id);
                if (tasinmaz == null || tasinmaz.KullaniciId != kullaniciId)
                {
                    return Unauthorized("You are not authorized to delete this property.");
                }
            }

            await _tasinmazService.DeleteTasinmazAsync(id, kullaniciId, ipAddress);
            return NoContent();
        }


        // DELETE: api/Tasinmaz/tasinmazlar
        [HttpDelete("tasinmazlar")]
        [Authorize(Roles = "Admin, User")] // Sadece Admin ve User rollerine sahip kullanıcıların erişimi
        public async Task<IActionResult> DeleteTasinmazlar([FromBody] List<int> ids)
        {
            if (ids == null || !ids.Any())
            {
                return BadRequest("No ids provided");
            }

            var kullaniciId = int.Parse(User.FindFirst(ClaimTypes.NameIdentifier)?.Value ?? "0");
            var ipAddress = HttpContext.Connection.RemoteIpAddress?.ToString();
            var userRole = User.FindFirst(ClaimTypes.Role)?.Value;

            // Eğer kullanıcı User rolündeyse, sadece kendi taşınmazlarını silebilir
            if (userRole == "User")
            {
                var tasinmazlar = await _tasinmazService.GetByKullaniciIdAsync(kullaniciId);
                if (!tasinmazlar.All(t => ids.Contains(t.TasinmazId)))
                {
                    return Unauthorized("You are not authorized to delete some of these properties.");
                }
            }

            await _tasinmazService.DeleteTasinmazlarAsync(ids, kullaniciId, ipAddress);
            return NoContent();
        }


        [HttpGet("GetAllProperties")]
        [Authorize]
        public async Task<ActionResult<IEnumerable<TasinmazDTO>>> GetAllProperties(
    [FromQuery] string ilAd = null,
    [FromQuery] string ilceAd = null,
    [FromQuery] string mahalleAd = null,
    [FromQuery] string ada = null,
    [FromQuery] string parsel = null,
    [FromQuery] string nitelik = null,
    [FromQuery] int? kullaniciId = null)
        {
            // Kullanıcı kimlik ve rol bilgilerini JWT'den al
            var userIdClaim = User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var userRole = User.FindFirst(ClaimTypes.Role)?.Value;

            // Kullanıcı kimlik veya rol bilgileri bulunamazsa yetkisiz hatası döndür
            if (string.IsNullOrEmpty(userIdClaim) || string.IsNullOrEmpty(userRole))
            {
                return Unauthorized("User ID or Role not found in the token.");
            }

            // Kullanıcı kimliği integer olarak parse edilemezse geçersiz istek döndür
            if (!int.TryParse(userIdClaim, out int userId))
            {
                return BadRequest("Invalid user ID format.");
            }

            try
            {
                IEnumerable<Tasinmaz> tasinmazlar;

                // Kullanıcı rolüne göre taşınmazları çek
                if (userRole == "Admin")
                {
                    tasinmazlar = await _tasinmazService.GetAllTasinmazlarAsync();
                }
                else
                {
                    tasinmazlar = await _tasinmazService.GetByKullaniciIdAsync(userId);
                }

                // Filtreleme işlemi
                if (!string.IsNullOrEmpty(ilAd))
                {
                    tasinmazlar = tasinmazlar.Where(t => t.Mahalle?.Ilce?.Il?.IlAdi.Contains(ilAd, StringComparison.OrdinalIgnoreCase) == true);
                }

                if (!string.IsNullOrEmpty(ilceAd))
                {
                    tasinmazlar = tasinmazlar.Where(t => t.Mahalle?.Ilce?.IlceAdi.Contains(ilceAd, StringComparison.OrdinalIgnoreCase) == true);
                }

                if (!string.IsNullOrEmpty(mahalleAd))
                {
                    tasinmazlar = tasinmazlar.Where(t => t.Mahalle?.MahalleAdi.Contains(mahalleAd, StringComparison.OrdinalIgnoreCase) == true);
                }

                if (!string.IsNullOrEmpty(ada))
                {
                    tasinmazlar = tasinmazlar.Where(t => t.Ada.Contains(ada, StringComparison.OrdinalIgnoreCase));
                }

                if (!string.IsNullOrEmpty(parsel))
                {
                    tasinmazlar = tasinmazlar.Where(t => t.Parsel.Contains(parsel, StringComparison.OrdinalIgnoreCase));
                }

                if (!string.IsNullOrEmpty(nitelik))
                {
                    tasinmazlar = tasinmazlar.Where(t => t.Nitelik.Contains(nitelik, StringComparison.OrdinalIgnoreCase));
                }

                if (kullaniciId.HasValue)
                {
                    tasinmazlar = tasinmazlar.Where(t => t.KullaniciId == kullaniciId.Value);
                }

                // Taşınmazları DTO'lara dönüştür
                var tasinmazDTOs = tasinmazlar.Select(t => new TasinmazDTO
                {
                    TasinmazId = t.TasinmazId,
                    Ada = t.Ada,
                    Parsel = t.Parsel,
                    Nitelik = t.Nitelik,
                    KoordinatBilgileri = t.KoordinatBilgileri,
                    KullaniciId = t.KullaniciId,
                    MahalleId = t.MahalleId,
                    Mahalle = t.Mahalle != null ? new MahalleDTO
                    {
                        MahalleId = t.Mahalle.MahalleId,
                        MahalleAdi = t.Mahalle.MahalleAdi,
                        IlceId = t.Mahalle.IlceId,
                        Ilce = t.Mahalle.Ilce != null ? new IlceDTO
                        {
                            IlceId = t.Mahalle.Ilce.IlceId,
                            IlceAdi = t.Mahalle.Ilce.IlceAdi,
                            IlId = t.Mahalle.Ilce.IlId,
                            Il = t.Mahalle.Ilce.Il != null ? new IlDTO
                            {
                                IlId = t.Mahalle.Ilce.Il.IlId,
                                IlAdi = t.Mahalle.Ilce.Il.IlAdi
                            } : null
                        } : null
                    } : null
                }).ToList();

                return Ok(tasinmazDTOs);
            }
            catch (Exception ex)
            {
                // Log exception
                //_logger.LogError(ex, "An error occurred while retrieving properties.");
                return StatusCode(StatusCodes.Status500InternalServerError, $"Internal server error: {ex.Message}");
            }
        }








    }
}