using System.Threading.Tasks;

public interface ILoggingService
{
    Task LogAction(int kullaniciId, int durumId, int islemTipId, string aciklama, string ip);
}