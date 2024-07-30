using System.Collections.Generic;
using System.Threading.Tasks;
using ilkDeneme.Entities.Concrete;

namespace ilkDeneme.Interfaces
{
    public interface IMahalleService
    {
        Task<IEnumerable<Mahalle>> GetMahalleler();
        Task<Mahalle> GetMahalle(int id);
        Task<Mahalle> CreateMahalle(Mahalle mahalle);
        Task<Mahalle> UpdateMahalle(int id, Mahalle mahalle);
        Task<bool> DeleteMahalle(int id);
        Task<List<Mahalle>> GetMahallelerByIlceId(int ilceId);

    }
}