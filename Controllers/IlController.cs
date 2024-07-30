using System.Collections.Generic;
using System.Threading.Tasks;
using ilkDeneme.Entities.Concrete;
using ilkDeneme.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace ilkDeneme.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class IlController : ControllerBase
    {
        private readonly IIlService _ilService;

        public IlController(IIlService ilService)
        {
            _ilService = ilService;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Il>>> GetIller()
        {
            var iller = await _ilService.GetIller();
            return Ok(iller);
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Il>> GetIl(int id)
        {
            var il = await _ilService.GetIl(id);
            if (il == null)
            {
                return NotFound();
            }

            return Ok(il);
        }

        [HttpPost]
        public async Task<ActionResult<Il>> CreateIl(Il il)
        {
            var newIl = await _ilService.CreateIl(il);
            return CreatedAtAction(nameof(GetIl), new { id = newIl.IlId }, newIl);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateIl(int id, Il il)
        {
            var updatedIl = await _ilService.UpdateIl(id, il);
            if (updatedIl == null)
            {
                return NotFound();
            }

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteIl(int id)
        {
            var result = await _ilService.DeleteIl(id);
            if (!result)
            {
                return NotFound();
            }

            return NoContent();
        }
    }
}