using System.Collections.Generic;
using System.Threading.Tasks;
using ilkDeneme.Entities.Concrete;
using ilkDeneme.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace ilkDeneme.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class IlceController : ControllerBase
    {
        private readonly IIlceService _ilceService;

        public IlceController(IIlceService ilceService)
        {
            _ilceService = ilceService;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Ilce>>> GetIlceler()
        {
            var ilceler = await _ilceService.GetIlceler();
            return Ok(ilceler);
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Ilce>> GetIlce(int id)
        {
            var ilce = await _ilceService.GetIlce(id);
            if (ilce == null)
            {
                return NotFound();
            }

            return Ok(ilce);
        }

        [HttpGet("ByIlId/{ilId}")] // Yeni endpoint
        public async Task<ActionResult<List<Ilce>>> GetIlcelerByIlId(int ilId)
        {
            var ilceler = await _ilceService.GetIlcelerByIlId(ilId);
            if (ilceler == null || ilceler.Count == 0)
            {
                return NotFound();
            }

            return Ok(ilceler);
        }



        [HttpPost]
        public async Task<ActionResult<Ilce>> CreateIlce(Ilce ilce)
        {
            var newIlce = await _ilceService.CreateIlce(ilce);
            return CreatedAtAction(nameof(GetIlce), new { id = newIlce.IlceId }, newIlce);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateIlce(int id, Ilce ilce)
        {
            var updatedIlce = await _ilceService.UpdateIlce(id, ilce);
            if (updatedIlce == null)
            {
                return NotFound();
            }

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteIlce(int id)
        {
            var result = await _ilceService.DeleteIlce(id);
            if (!result)
            {
                return NotFound();
            }

            return NoContent();
        }
    }

}