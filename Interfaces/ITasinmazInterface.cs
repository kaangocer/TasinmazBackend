using System.Collections.Generic;
using System.Threading.Tasks;
using ilkDeneme.Entities.Concrete;

namespace ilkDeneme.Services
{
    public interface ITasinmazInterface
    {
        Task<List<Tasinmaz>> GetAllTasinmazlarAsync();
        Task<Tasinmaz> GetTasinmazByIdAsync(int id);
        Task<Tasinmaz> AddTasinmazAsync(Tasinmaz tasinmaz);
        Task<Tasinmaz> UpdateTasinmazAsync(Tasinmaz tasinmaz);
        Task DeleteTasinmazAsync(int id);
        Task DeleteTasinmazlarAsync(List<int> ids);

        Task<IEnumerable<Tasinmaz>> GetByKullaniciIdAsync(int kullaniciId);

    }
}