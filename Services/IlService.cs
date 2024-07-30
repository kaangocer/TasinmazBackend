using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ilkDeneme.Entities.Concrete;
using ilkDeneme.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace ilkDeneme.Services
{
    public class IlService : IIlService
    {
        private readonly ApplicationDbContext _context;

        public IlService(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<Il>> GetIller()
        {
            return await _context.Iller
                .ToListAsync();
        }

        public async Task<Il> GetIl(int id)
        {
            return await _context.Iller
                .FirstOrDefaultAsync(i => i.IlId == id);
        }

        public async Task<Il> CreateIl(Il il)
        {
            _context.Iller.Add(il);
            await _context.SaveChangesAsync();
            return il;
        }

        public async Task<Il> UpdateIl(int id, Il il)
        {
            if (id != il.IlId)
            {
                return null;
            }

            _context.Entry(il).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
                return il;
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!IlExists(id))
                {
                    return null;
                }
                else
                {
                    throw;
                }
            }
        }

        public async Task<bool> DeleteIl(int id)
        {
            var il = await _context.Iller.FindAsync(id);
            if (il == null)
            {
                return false;
            }

            _context.Iller.Remove(il);
            await _context.SaveChangesAsync();
            return true;
        }

        private bool IlExists(int id)
        {
            return _context.Iller.Any(e => e.IlId == id);
        }
    }
}