﻿    using System.Collections.Generic;
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
        public async Task<IActionResult> GetByKullaniciId(int id)
        {
           
            var tasinmazlar = await _tasinmazService.GetByKullaniciIdAsync(id);

            return Ok(tasinmazlar);
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
                if (userRole == "User")
                {
                    var existingTasinmaz = await _tasinmazService.GetTasinmazByIdAsync(id);
                    if (existingTasinmaz == null || existingTasinmaz.KullaniciId != kullaniciId)
                    {
                        return Unauthorized("You are not authorized to update this property.");
                    }
                }

                var updatedTasinmaz = await _tasinmazService.UpdateTasinmazAsync(tasinmaz, kullaniciId, ipAddress);

                // Loglama işlemi başarılı olduğunda
                await _loggingService.LogAction(kullaniciId, 1, 2, $"Updated property with ID {id}", ipAddress);

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
        public async Task<ActionResult<IEnumerable<TasinmazDTO>>> GetAllProperties()
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
                return StatusCode(500, $"Internal server error: {ex.Message}");
            }
        }








    }
}