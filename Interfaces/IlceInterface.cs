using System.Collections.Generic;
using System.Threading.Tasks;
using ilkDeneme.Entities.Concrete;

namespace ilkDeneme.Interfaces
{
    public interface IIlceService
    {
        Task<IEnumerable<Ilce>> GetIlceler();
        Task<Ilce> GetIlce(int id);
        Task<Ilce> CreateIlce(Ilce ilce);
        Task<Ilce> UpdateIlce(int id, Ilce ilce);
        Task<bool> DeleteIlce(int id);


        Task<List<Ilce>> GetIlcelerByIlId(int ilId); // Yeni metot

    }
}