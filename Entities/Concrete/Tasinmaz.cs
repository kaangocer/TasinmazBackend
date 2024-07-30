
using System.ComponentModel.DataAnnotations.Schema;

namespace ilkDeneme.Entities.Concrete
{
    

    

    

    public class Tasinmaz
    {
        
        public int TasinmazId { get; set; }
    
        public string Ada { get; set; }
        public string Parsel { get; set; }
        public string Nitelik { get; set; }

        public string KoordinatBilgileri { get; set; }
        
        public int KullaniciId { get; set; }

        [ForeignKey("KullaniciId")]
        public virtual User User { get; set; }



        public int MahalleId { get; set; }
        [ForeignKey("MahalleId")]
        public virtual Mahalle Mahalle { get; set; }
        

    }




}
