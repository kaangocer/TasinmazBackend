using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using Newtonsoft.Json;

namespace ilkDeneme.Entities.Concrete
{
    public class Ilce
    {
        public int IlceId { get; set; }
        public string IlceAdi { get; set; }
        public int IlId { get; set; }
        [ForeignKey("IlId")]

        public Il Il { get; set; }
       
    }
}
