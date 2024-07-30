using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ilkDeneme.Entities.Concrete;
using ilkDeneme.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace ilkDeneme.Services
{
    public class IlceService : IIlceService
    {
        private readonly ApplicationDbContext _context;

        public IlceService(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<Ilce>> GetIlceler()
        {
            return await _context.Ilceler

                .Include(i => i.Il)
                .ToListAsync();
        }

        public async Task<Ilce> GetIlce(int id)
        {
            return await _context.Ilceler
                .Include(i => i.Il)
                .FirstOrDefaultAsync(i => i.IlceId == id);
        }

        public async Task<Ilce> CreateIlce(Ilce ilce)
        {
            _context.Ilceler.Add(ilce);
            await _context.SaveChangesAsync();
            return ilce;
        }

        public async Task<Ilce> UpdateIlce(int id, Ilce ilce)
        {
            if (id != ilce.IlceId)
            {
                return null;
            }

            _context.Entry(ilce).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
                return ilce;
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!IlceExists(id))
                {
                    return null;
                }
                else
                {
                    throw;
                }
            }
        }

        public async Task<bool> DeleteIlce(int id)
        {
            var ilce = await _context.Ilceler.FindAsync(id);
            if (ilce == null)
            {
                return false;
            }

            _context.Ilceler.Remove(ilce);
            await _context.SaveChangesAsync();
            return true;
        }

        private bool IlceExists(int id)
        {
            return _context.Ilceler.Any(e => e.IlceId == id);
        }
        public async Task<List<Ilce>> GetIlcelerByIlId(int ilId) // Yeni metot
        {
            return await _context.Ilceler.Where(ilce => ilce.IlId == ilId).ToListAsync();
        }
    }

}