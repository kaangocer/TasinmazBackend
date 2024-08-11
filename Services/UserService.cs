using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using ilkDeneme.DTOs;
using ilkDeneme.Entities.Concrete;
using System.Linq;

public class UserService : IUserService
{
    private readonly ApplicationDbContext _context;

    public UserService(ApplicationDbContext context)
    {
        _context = context;
    }

    public async Task<IEnumerable<User>> GetAllUsersAsync()
    {
        return await _context.Users.ToListAsync(); // Tüm kullanıcıları liste olarak döndür
    }

    public async Task DeleteUserAsync(int id)
    {
        var user = await _context.Users.FindAsync(id); // ID'ye göre kullanıcıyı bul
        if (user != null)
        {
            _context.Users.Remove(user); // Kullanıcıyı sil
            await _context.SaveChangesAsync(); // Değişiklikleri kaydet
        }
    }

    public async Task AddUserAsync(UserDTO userDto)
    {
        if (userDto == null) throw new ArgumentNullException(nameof(userDto));

        var existingUser = await _context.Users.SingleOrDefaultAsync(u => u.Email == userDto.Email);
        if (existingUser != null)
        {
            throw new InvalidOperationException("Bu email adresi zaten kayıtlı.");
        }


        // Kullanıcıyı oluştur
        var user = new User
        {
            Email = userDto.Email,
            Role = userDto.Role
        };

        // Şifreyi oluştur ve hashle
        byte[] passwordHash, passwordSalt;
        CreatePasswordHash(userDto.Password, out passwordHash, out passwordSalt);

        user.PasswordHash = passwordHash;
        user.PasswordSalt = passwordSalt;

        _context.Users.Add(user);
        await _context.SaveChangesAsync();
    }

    // Şifreyi hash'lemek için bir yöntem
    private void CreatePasswordHash(string password, out byte[] passwordHash, out byte[] passwordSalt)
    {
        using (var hmac = new System.Security.Cryptography.HMACSHA256())
        {
            passwordSalt = hmac.Key;
            passwordHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
        }
    }

    public async Task UpdateUserAsync(UserDTO userDto)
    {
        if (userDto == null) throw new ArgumentNullException(nameof(userDto));

        var user = await _context.Users.FindAsync(userDto.KullaniciId);
        if (user == null)
        {
            throw new ArgumentException("Kullanıcı bulunamadı");
        }
        var existingUserWithSameEmail = await _context.Users
        .Where(u => u.Email == userDto.Email && u.KullaniciId != userDto.KullaniciId)
        .FirstOrDefaultAsync();

        if (existingUserWithSameEmail != null)
        {
            throw new InvalidOperationException("Bu email adresi başka bir kullanıcı tarafından kullanılıyor.");
        }


        user.Email = userDto.Email;
        user.Role = userDto.Role;

        if (!string.IsNullOrEmpty(userDto.Password))
        {
            byte[] passwordHash, passwordSalt;
            CreatePasswordHash(userDto.Password, out passwordHash, out passwordSalt);

            user.PasswordHash = passwordHash;
            user.PasswordSalt = passwordSalt;
        }

        _context.Users.Update(user);
        await _context.SaveChangesAsync();
    }



    public async Task<User> GetUserByIdAsync(int id)
    {
        return await _context.Users.FindAsync(id);
    }

    

}