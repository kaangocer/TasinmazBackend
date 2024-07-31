using System;

namespace ilkDeneme.Entities.Concrete
{
    public class Log
    {
        public int LogId { get; set; }
        public int KullaniciId { get; set; }
        public int DurumId { get; set; }
        public int IslemTipId { get; set; }
        public string Aciklama { get; set; }
        public DateTime TarihSaat { get; set; }
        public string KullaniciIp { get; set; }
    }
}
