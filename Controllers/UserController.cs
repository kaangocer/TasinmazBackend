using ilkDeneme.DTOs;
using ilkDeneme.Entities.Concrete;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

[Route("api/[controller]")]
[ApiController]
public class UserController : ControllerBase
{
    private readonly IUserService _userService;

    public UserController(IUserService userService)
    {
        _userService = userService;
    }

    [HttpGet("GetAllUsers")]
    [Authorize(Roles = "Admin")] // Admin rolüne sahip kullanıcıların erişim izni
    public async Task<ActionResult<IEnumerable<UserDTO>>> GetAllUsers()
    {
        try
        {
            var users = await _userService.GetAllUsersAsync(); // Kullanıcıları al
            var userDTOs = users.Select(u => new UserDTO
            {
                KullaniciId = u.KullaniciId,
                Email = u.Email,
                Role = u.Role
            }).ToList();
            return Ok(userDTOs); // DTO'ları döndür
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}"); // Hata durumunda 500 döndür
        }
    }

    [HttpDelete("DeleteUser/{id}")]
    [Authorize(Roles = "Admin")] // Admin rolüne sahip kullanıcıların erişim izni
    public async Task<IActionResult> DeleteUser(int id)
    {
        try
        {
            await _userService.DeleteUserAsync(id); // Kullanıcıyı sil
            return NoContent(); // 204 No Content döndür
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}"); // Hata durumunda 500 döndür
        }
    }


    [HttpPost("AddUser")]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> AddUser([FromBody] UserDTO userDto)
    {
        if (!ModelState.IsValid)
            return BadRequest(ModelState);

        try
        {
            await _userService.AddUserAsync(userDto);
            return Ok();
        }
        catch (InvalidOperationException ex)
        {
            return Conflict(ex.Message); // 409 Conflict durum kodu ve hata mesajı döndür
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}"); // 500 Internal Server Error
        }
    }


    [HttpPut("UpdateUser")]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> UpdateUser([FromBody] UserDTO userDto)
    {
        if (!ModelState.IsValid)
            return BadRequest(ModelState);

        try
        {
            if (!userDto.KullaniciId.HasValue)
                return BadRequest("KullaniciId boş olamaz.");

            await _userService.UpdateUserAsync(userDto);
            return Ok(new { message = "Kullanıcı başarıyla güncellendi." });
        }
        catch (ArgumentException ex)
        {
            return NotFound(new { message = ex.Message }); // Kullanıcı bulunamadı
        }
        catch (InvalidOperationException ex)
        {
            return Conflict(new { message = ex.Message }); // Email başka bir kullanıcı tarafından kullanılıyor
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = $"Internal server error: {ex.Message}" });
        }
    }









}
