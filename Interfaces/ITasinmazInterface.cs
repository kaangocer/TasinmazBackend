using System.Collections.Generic;
using System.Threading.Tasks;
using ilkDeneme.Entities.Concrete;

namespace ilkDeneme.Services
{
    public interface ITasinmazInterface
    {
        Task<List<Tasinmaz>> GetAllTasinmazlarAsync();
        Task<Tasinmaz> GetTasinmazByIdAsync(int id);
        Task<Tasinmaz> AddTasinmazAsync(Tasinmaz tasinmaz, int kullaniciId, string ipAddress);

        Task<Tasinmaz> UpdateTasinmazAsync(Tasinmaz tasinmaz, int kullaniciId, string ipAddress);
        Task DeleteTasinmazAsync(int id, int kullaniciId, string ipAddress);
        Task DeleteTasinmazlarAsync(List<int> ids, int kullaniciId, string ipAddress);

        Task<IEnumerable<Tasinmaz>> GetByKullaniciIdAsync(
            int kullaniciId,
            string ilAd = null,
            string ilceAd = null,
            string mahalleAd = null,
            string ada = null,
            string parsel = null,
            string nitelik = null);
    }


}