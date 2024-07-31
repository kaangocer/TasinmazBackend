using ilkDeneme.Entities.Concrete;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ilkDeneme.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LogsController : ControllerBase
    {
        private readonly LogService _logService;

        public LogsController(LogService logService)
        {
            _logService = logService;
        }

        [HttpPost("filter")]
        public async Task<IActionResult> GetLogs(LogFilterDTO filter)
        {
            var logs = await _logService.GetLogsAsync(filter);
            return Ok(logs);
        }

        [HttpPost("export")]
        public IActionResult ExportLogs([FromBody] List<Log> logs)
        {
            
            return Ok();
        }

        [HttpPost]
        public async Task<IActionResult> AddLog([FromBody] Log log)
        {
            await _logService.AddLogAsync(log);
            return Ok();
        }
    }

}
