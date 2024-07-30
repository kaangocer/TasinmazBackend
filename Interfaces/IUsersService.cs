using ilkDeneme.Entities.Concrete;
using System.Collections.Generic;
using System.Threading.Tasks;
using ilkDeneme.DTOs; // DTO'larınızı import edin

public interface IUserService
{
    Task<IEnumerable<User>> GetAllUsersAsync(); // Tüm kullanıcıları getirme
    Task DeleteUserAsync(int id); // Kullanıcıyı silme
    Task AddUserAsync(UserDTO userDto);
    Task UpdateUserAsync(UserDTO userDto);
    Task<User> GetUserByIdAsync(int id);
}
