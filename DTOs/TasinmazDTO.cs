namespace ilkDeneme.DTOs
{
    public class TasinmazDTO
    {
        public int TasinmazId { get; set; }
        public string Ada { get; set; }
        public string Parsel { get; set; }
        public string Nitelik { get; set; }
        public string KoordinatBilgileri { get; set; }
        public int KullaniciId { get; set; }
        public int MahalleId { get; set; }
        public MahalleDTO Mahalle { get; set; }
    }

    public class MahalleDTO
    {
        public int MahalleId { get; set; }
        public string MahalleAdi { get; set; }
        public int IlceId { get; set; }
        public IlceDTO Ilce { get; set; }
    }

    public class IlceDTO
    {
        public int IlceId { get; set; }
        public string IlceAdi { get; set; }
        public int IlId { get; set; }
        public IlDTO Il { get; set; }
    }

    public class IlDTO
    {
        public int IlId { get; set; }
        public string IlAdi { get; set; }
    }



}
