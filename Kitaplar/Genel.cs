using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kitaplar
{
    public abstract class Genel
    {
        public abstract string Yazar {get; set;}
        public abstract string Tur { get; set; }
        public abstract string KitapAdi { get; set; }
        public abstract int SayfaSayisi { get; set; }
        public abstract int Fiyat { get; set; }

    }
}
