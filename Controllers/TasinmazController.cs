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

    namespace ilkDeneme.Controllers
    {
    
    [Route("api/[controller]")]
        [ApiController]
        public class TasinmazController : ControllerBase
        {
            private readonly ITasinmazInterface _tasinmazService;

            public TasinmazController(ITasinmazInterface tasinmazService)
            {
                _tasinmazService = tasinmazService;
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
            public async Task<ActionResult<Tasinmaz>> PostTasinmaz(Tasinmaz tasinmaz)
            {
                var newTasinmaz = await _tasinmazService.AddTasinmazAsync(tasinmaz);
                return CreatedAtAction(nameof(GetTasinmaz), new { id = newTasinmaz.TasinmazId }, newTasinmaz);
            }

            // PUT: api/Tasinmaz/5
            [HttpPut("{id}")]
            public async Task<IActionResult> PutTasinmaz(int id, Tasinmaz tasinmaz)
            {
                if (id != tasinmaz.TasinmazId)
                {
                    return BadRequest();
                }
                await _tasinmazService.UpdateTasinmazAsync(tasinmaz);
                return NoContent();
            }

            // DELETE: api/Tasinmaz/5
            [HttpDelete("{id}")]
            public async Task<IActionResult> DeleteTasinmaz(int id)
            {
                await _tasinmazService.DeleteTasinmazAsync(id);
                return NoContent();
            }
        [HttpDelete("tasinmazlar")]
        public async Task<IActionResult> DeleteTasinmazlar([FromBody] List<int> ids)
        {
            if (ids == null || !ids.Any())
            {
                return BadRequest("No ids provided");
            }

            await _tasinmazService.DeleteTasinmazlarAsync(ids);

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