using System;



public class LogFilterDTO
{
    public int? KullaniciId { get; set; }
    public int? DurumId { get; set; }  // DurumId olarak değiştirildi
    public int? IslemTipId { get; set; }  // IslemTipId olarak değiştirildi
    public string? Aciklama { get; set; }
    public DateTime? TarihSaat { get; set; }
}

