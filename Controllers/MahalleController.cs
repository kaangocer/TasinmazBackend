using System.Collections.Generic;
using System.Threading.Tasks;
using ilkDeneme.Entities.Concrete;
using ilkDeneme.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace ilkDeneme.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MahalleController : ControllerBase
    {
        private readonly IMahalleService _mahalleService;

        public MahalleController(IMahalleService mahalleService)
        {
            _mahalleService = mahalleService;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Mahalle>>> GetMahalleler()
        {
            var mahalleler = await _mahalleService.GetMahalleler();
            return Ok(mahalleler);
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Mahalle>> GetMahalle(int id)
        {
            var mahalle = await _mahalleService.GetMahalle(id);
            if (mahalle == null)
            {
                return NotFound();
            }

            return Ok(mahalle);
        }
        // yeni ekledigim
        [HttpGet("ilce/{ilceId}/mahalleler")]
        public async Task<ActionResult<List<Mahalle>>> GetMahallelerByIlceId(int ilceId)
        {
            var mahalleler = await _mahalleService.GetMahallelerByIlceId(ilceId);
            if (mahalleler == null || mahalleler.Count == 0)
            {
                return NotFound();
            }

            return Ok(mahalleler);
        }


        [HttpPost]
        public async Task<ActionResult<Mahalle>> CreateMahalle(Mahalle mahalle)
        {
            var newMahalle = await _mahalleService.CreateMahalle(mahalle);
            return CreatedAtAction(nameof(GetMahalle), new { id = newMahalle.MahalleId }, newMahalle);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateMahalle(int id, Mahalle mahalle)
        {
            var updatedMahalle = await _mahalleService.UpdateMahalle(id, mahalle);
            if (updatedMahalle == null)
            {
                return NotFound();
            }

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteMahalle(int id)
        {
            var result = await _mahalleService.DeleteMahalle(id);
            if (!result)
            {
                return NotFound();
            }

            return NoContent();
        }
    }
}