using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ilkDeneme.Entities.Concrete;
using ilkDeneme.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace ilkDeneme.Services
{
    public class MahalleService : IMahalleService
    {
        private readonly ApplicationDbContext _context;

        public MahalleService(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<Mahalle>> GetMahalleler()
        {
            return await _context.Mahalleler.Include(t=>t.Ilce).ThenInclude(t=>t.Il)
                .ToListAsync();
        }

        public async Task<Mahalle> GetMahalle(int id)
        {
            return await _context.Mahalleler
                .FirstOrDefaultAsync(m => m.MahalleId == id);
        }

        public async Task<Mahalle> CreateMahalle(Mahalle mahalle)
        {
            _context.Mahalleler.Add(mahalle);
            await _context.SaveChangesAsync();
            return mahalle;
        }

        public async Task<Mahalle> UpdateMahalle(int id, Mahalle mahalle)
        {
            if (id != mahalle.MahalleId)
            {
                return null;
            }

            _context.Entry(mahalle).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
                return mahalle;
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!MahalleExists(id))
                {
                    return null;
                }
                else
                {
                    throw;
                }
            }
        }

        public async Task<bool> DeleteMahalle(int id)
        {
            var mahalle = await _context.Mahalleler.FindAsync(id);
            if (mahalle == null)
            {
                return false;
            }

            _context.Mahalleler.Remove(mahalle);
            await _context.SaveChangesAsync();
            return true;
        }

        private bool MahalleExists(int id)
        {
            return _context.Mahalleler.Any(e => e.MahalleId == id);
        }

        //son ekledigim
        public async Task<List<Mahalle>> GetMahallelerByIlceId(int ilceId)
        {
            return await _context.Mahalleler
                .Where(m => m.IlceId == ilceId)
                .ToListAsync();
        }

    }
}