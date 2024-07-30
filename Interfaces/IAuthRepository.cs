using ilkDeneme.Entities.Concrete;
using System.Threading.Tasks;

namespace ilkDeneme.Interfaces
{
    public interface IAuthRepository
    {
        Task<User>Register(User user, string password);
        Task<User>Login(string Email, string password);  

        Task<bool> UserExists(string Email);
    }
}
