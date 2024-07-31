using ilkDeneme.DTOs;
using ilkDeneme.Entities.Concrete;
using ilkDeneme.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace ilkDeneme.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly IAuthRepository _authRepository;
        private readonly IConfiguration _configuration;
        private readonly ILoggingService _loggingService;

        public AuthController(IAuthRepository authRepository, IConfiguration configuration, ILoggingService loggingService)
        {
            _authRepository = authRepository;
            _configuration = configuration;
            _loggingService = loggingService;
        }

        [HttpPost("register")]
        public async Task<IActionResult> Register([FromBody] UserForRegisterDto userForRegisterDto)
        {
            if (await _authRepository.UserExists(userForRegisterDto.Email))
            {
                await _loggingService.LogAction(0, 2, 1, "Email already exists", HttpContext.Connection.RemoteIpAddress?.ToString());
                return BadRequest("Email already exists");
            }

            var userToCreate = new User
            {
                Email = userForRegisterDto.Email,
                Role = "User"
            };

            var createdUser = await _authRepository.Register(userToCreate, userForRegisterDto.Password);

            // Log successful registration
            await _loggingService.LogAction(createdUser.KullaniciId, 1, 1, "User registered successfully", HttpContext.Connection.RemoteIpAddress?.ToString());

            return StatusCode(201);
        }

        [HttpPost("login")]
        public async Task<ActionResult> Login([FromBody] UserForLoginDto userForLoginDto)
        {
            var user = await _authRepository.Login(userForLoginDto.Email, userForLoginDto.Password);
            if (user == null)
            {
                await _loggingService.LogAction(0, 2, 4, "Failed login attempt", HttpContext.Connection.RemoteIpAddress?.ToString());
                return Unauthorized("Invalid login attempt");
            }

            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_configuration.GetSection("AppSettings:Token").Value);

            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new Claim[] {
                    new Claim(ClaimTypes.NameIdentifier, user.KullaniciId.ToString()),
                    new Claim(ClaimTypes.Name, user.Email),
                    new Claim(ClaimTypes.Role, user.Role ?? string.Empty)
                }),
                Expires = DateTime.Now.AddDays(1),
                Issuer = _configuration["AppSettings:Issuer"],
                Audience = _configuration["AppSettings:Audience"],
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };

            var token = tokenHandler.CreateToken(tokenDescriptor);
            var tokenString = tokenHandler.WriteToken(token);

            // Log successful login
            await _loggingService.LogAction(user.KullaniciId, 1, 4, "User logged in", HttpContext.Connection.RemoteIpAddress?.ToString());

            return Ok(new { token = tokenString });
        }
    }
}
