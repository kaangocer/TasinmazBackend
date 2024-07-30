
using System.ComponentModel.DataAnnotations.Schema;


namespace ilkDeneme.Entities.Concrete
{
    public class Mahalle
    {
        public int MahalleId { get; set; }
        public string MahalleAdi { get; set; }
        public int IlceId { get; set; } // Ilce tablosundaki ilce_id'ye referans

        [ForeignKey("IlceId")]
        public virtual Ilce Ilce { get; set; } // Ilce tablosu ile ilişkilendirme
    }
}
