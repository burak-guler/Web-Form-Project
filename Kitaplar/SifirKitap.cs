using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kitaplar
{
     public class SifirKitap : Genel
    {
        public override string Yazar { get; set; }
        public override string Tur { get; set; }
        public override string KitapAdi { get; set; }
        public override int SayfaSayisi { get; set; }
        public override int Fiyat { get; set; }

        public SifirKitap(string YAZAR, string TUR, string KİTAPAD, int SAYFASAYİSİ, int FİYAT)
        {
            this.Yazar = YAZAR;
            this.Tur = TUR;
            this.KitapAdi = KİTAPAD;
            this.SayfaSayisi = SAYFASAYİSİ;
            this.Fiyat = FİYAT;

        }
    }
}
