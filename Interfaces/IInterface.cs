using System.Collections.Generic;
using System.Threading.Tasks;
using ilkDeneme.Entities.Concrete;

namespace ilkDeneme.Interfaces
{
    public interface IIlService
    {
        Task<IEnumerable<Il>> GetIller();
        Task<Il> GetIl(int id);
        Task<Il> CreateIl(Il il);
        Task<Il> UpdateIl(int id, Il il);
        Task<bool> DeleteIl(int id);
    }
}