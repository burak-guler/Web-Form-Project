using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kitaplar
{
    public class UyeKayit
    {
        public string KullaniciAd { get; set; }
        public string Email { get; set; }
        public string Parola { get; set; }
        public string ParolaOnay { get; set; }
        
        
        public UyeKayit(string ad, string mail, string prlo, string prlony)
        {
            
            this.KullaniciAd = ad;
            this.Email = mail;
            this.Parola = prlo;
            this.ParolaOnay = prlony;

        }
        
        
        public string PAROLA
        {
            get { return Parola; }

            set
            { 
                if(value.Length>=7)
                {
                    Parola = value;
                }
                else
                {
                    Console.Write("Parola Uzunluğu Hatalı!..");
                }
            }
        }
        
    }
}
