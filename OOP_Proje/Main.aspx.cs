using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OOP_Proje
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        static public List<Kitaplar.SifirKitap> SifirKitap = new List<Kitaplar.SifirKitap>();
        static public List<Kitaplar.İkinciElKitap> İkincielKitap = new List<Kitaplar.İkinciElKitap>();
        static public int kazanc=0;

        protected void İkinciel_satis_Click(object sender, EventArgs e)
        {
            if (İkincielKitap.Count==0)
            {
                Response.Write("<script lang='JavaScript'>alert('Sistemde ikinci el kitap bulunamamaktadır, önce sisteme kitap eklemelisiniz.');</script>");
                İSyazar.Text = "";
                İSkitapad.Text = "";
                İSfiyat.Text = "";
                İStur.Text = " " ;
                İSsayfasayisi.Text="";
            }
            else 
            {
                for (int i = 0; i < İkincielKitap.Count; i++)
                {
                    if (İkincielKitap[i].Yazar==İSyazar.Text && İkincielKitap[i].KitapAdi== İSkitapad.Text && İkincielKitap[i].Fiyat==Convert.ToInt32(İSfiyat.Text) && İkincielKitap[i].Tur==İStur.Text && İkincielKitap[i].SayfaSayisi==Convert.ToInt32(İSsayfasayisi.Text) )
                    {
                        kazanc += Convert.ToInt32(İSfiyat.Text);
                        Response.Write("<script lang='JavaScript'>alert('Satış Başarılı.');</script>");
                        İkincielKitap.RemoveAt(i);
                        i = İkincielKitap.Count;
                        İSyazar.Text = "";
                        İSkitapad.Text = "";
                        İSfiyat.Text = "";
                        İStur.Text = "";
                        İSsayfasayisi.Text = "";
                    }
                    else
                    {
                        Response.Write("<script lang='JavaScript'>alert('Girilen bilgiler hatalı veya yanlış girildi.!!!');</script>");
                    }
                }
            }
            
        }

        protected void sifir_satis_Click(object sender, EventArgs e)
        {
            if (SifirKitap.Count == 0)
            {
                Response.Write("<script lang='JavaScript'>alert('Sistemde sıfır kitap bulunamamaktadır, önce sisteme kitap eklemelisiniz.');</script>");
                SSyazar.Text = "";
                SSkitapad.Text = "";
                SSfiyat.Text = "";
                SStur.Text = "";
                SSsayfasayisi.Text = "";
            }
            else
            {
                for (int i = 0; i < SifirKitap.Count; i++)
                {
                    if (SifirKitap[i].Yazar == SSyazar.Text && SifirKitap[i].KitapAdi == SSkitapad.Text && SifirKitap[i].Fiyat == Convert.ToInt32(SSfiyat.Text) && SifirKitap[i].Tur == SStur.Text && SifirKitap[i].SayfaSayisi == Convert.ToInt32(SSsayfasayisi.Text))
                    {
                        kazanc += Convert.ToInt32(SSfiyat.Text);
                        Response.Write("<script lang='JavaScript'>alert('Satış Başarılı.');</script>");
                        SifirKitap.RemoveAt(i);
                        i = SifirKitap.Count;
                        SSyazar.Text = "";
                        SSkitapad.Text = "";
                        SSfiyat.Text = "";
                        SStur.Text = "";
                        SSsayfasayisi.Text = "";
                    }
                    else
                    {
                        Response.Write("<script lang='JavaScript'>alert('Girilen bilgiler hatalı veya yanlış girildi.!!!');</script>");
                    }
                }
            }

        }

        protected void ikinciel_ekle_Click(object sender, EventArgs e)
        {
            Kitaplar.İkinciElKitap ikinciel_ekle =  new Kitaplar.İkinciElKitap(İEyazar.Text,İEtur.Text,İEkitapad.Text,Convert.ToInt32(İEsayfasayisi.Text),Convert.ToInt32(İEfiyat.Text));
            İkincielKitap.Add(ikinciel_ekle);
            İEyazar.Text = "";
            İEtur.Text=" ";
            İEkitapad.Text = " ";
            İEsayfasayisi.Text = " ";
            İEfiyat.Text = " ";
            
        }

        protected void sifir_ekle_Click(object sender, EventArgs e)
        {
            Kitaplar.SifirKitap sifir_ekle = new Kitaplar.SifirKitap(SEyazar.Text,SEtur.Text,SEkitapad.Text,Convert.ToInt32(SEsayfasayisi.Text),Convert.ToInt32(SEfiyat.Text));
            SifirKitap.Add(sifir_ekle);
            SEyazar.Text = " ";
            SEtur.Text = " ";
            SEkitapad.Text = " ";
            SEfiyat.Text = "";
            SEsayfasayisi.Text = " ";
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Label2.Text = kazanc + " TL";
        }

        static public int j = 1;
        protected void yazar_sorgu_Click(object sender, EventArgs e)
        {
            if (İkincielKitap.Count>=1 || SifirKitap.Count>=1)
            {
                for (int i = 0; i < İkincielKitap.Count; i++)
                {
                    if (İkincielKitap[i].Yazar == YazarSorgu.Text)
                    {

                        ListBox1.Items.Add("**" + j + ".Sorgu(ikinci el kitap)**");
                        ListBox1.Items.Add("kitap adı:" + İkincielKitap[i].KitapAdi);
                        ListBox1.Items.Add(" Yazar:" + İkincielKitap[i].Yazar);
                        ListBox1.Items.Add(" Tür:" + İkincielKitap[i].Tur);
                        ListBox1.Items.Add("sayfa: " + İkincielKitap[i].SayfaSayisi);
                        ListBox1.Items.Add(" fiyat:" + İkincielKitap[i].Fiyat);
                        ListBox1.Items.Add("-----------------------------------------------------  ");
                        j++;
                        yazar_sorgu.Text = " ";
                        
                    }
                }
                for (int i = 0; i < SifirKitap.Count; i++)
                {
                    if (İkincielKitap[i].Yazar == YazarSorgu.Text)
                    {

                        ListBox1.Items.Add("**" + j + ".Sorgu(sıfır kitap)**");
                        ListBox1.Items.Add("kitap adı:" + SifirKitap[i].KitapAdi);
                        ListBox1.Items.Add(" Yazar:" + SifirKitap[i].Yazar);
                        ListBox1.Items.Add(" Tür:" + SifirKitap[i].Tur);
                        ListBox1.Items.Add("sayfa: " + SifirKitap[i].SayfaSayisi);
                        ListBox1.Items.Add(" fiyat:" + SifirKitap[i].Fiyat);
                        ListBox1.Items.Add("-----------------------------------------------------  ");
                        j++;
                        yazar_sorgu.Text = " ";
                        
                    }
                }
            }
            else if (İkincielKitap.Count == 0 && SifirKitap.Count==0)
            {
                Response.Write("<script lang='JavaScript'>alert('Sistemde herhangi bir kitap olmadığı için sorgu yapılamıyor..!!!');</script>");
            }
            else 
            {
                Response.Write("<script lang='JavaScript'>alert('Girilen bilgiler hatalı veya yanlış girildi.!!!');</script>");
            }

        }

        static public int a=1;
        protected void sorgu_tur_Click(object sender, EventArgs e)
        {
            if (İkincielKitap.Count >= 1 || SifirKitap.Count >= 1)
            {
                for (int i = 0; i < İkincielKitap.Count; i++)
                {
                    if (İkincielKitap[i].Tur == TurSorgu.Text)
                    {

                        ListBox2.Items.Add("**" + a + ".Sorgu(ikinci el kitap)**");
                        ListBox2.Items.Add("kitap adı:" + İkincielKitap[i].KitapAdi);
                        ListBox2.Items.Add(" Yazar:" + İkincielKitap[i].Yazar);
                        ListBox2.Items.Add(" Tür:" + İkincielKitap[i].Tur);
                        ListBox2.Items.Add("sayfa: " + İkincielKitap[i].SayfaSayisi);
                        ListBox2.Items.Add(" fiyat:" + İkincielKitap[i].Fiyat);
                        ListBox2.Items.Add("-----------------------------------------------------  ");
                        a++;
                        TurSorgu.Text = " ";
                        
                    }
                }
                for (int k = 0; k < SifirKitap.Count; k++)
                {
                    if (SifirKitap[k].Tur == TurSorgu.Text)
                    {

                        ListBox2.Items.Add("**" + a + ".Sorgu(sıfır kitap)**");
                        ListBox2.Items.Add("kitap adı:" + SifirKitap[k].KitapAdi);
                        ListBox2.Items.Add(" Yazar:" + SifirKitap[k].Yazar);
                        ListBox2.Items.Add(" Tür:" + SifirKitap[k].Tur);
                        ListBox2.Items.Add("sayfa: " + SifirKitap[k].SayfaSayisi);
                        ListBox2.Items.Add(" fiyat:" + SifirKitap[k].Fiyat);
                        ListBox2.Items.Add("-----------------------------------------------------  ");
                        a++;
                        TurSorgu.Text = " ";
                        
                    }
                }
            }
            else if (İkincielKitap.Count == 0 && SifirKitap.Count == 0)
            {
                Response.Write("<script lang='JavaScript'>alert('Sistemde herhangi bir kitap olmadığı için sorgu yapılamıyor..!!!');</script>");
            }
            else
            {
                Response.Write("<script lang='JavaScript'>alert('Girilen bilgiler hatalı veya yanlış girildi.!!!');</script>");
            }

        }

        static public int b = 1;
        protected void kitap_sorgu_Click(object sender, EventArgs e)
        {
            if (İkincielKitap.Count >= 1 || SifirKitap.Count >= 1)
            {
                for (int i = 0; i < İkincielKitap.Count; i++)
                {
                    if (İkincielKitap[i].KitapAdi == KitapSorgu.Text)
                    {

                        ListBox3.Items.Add("**" + b + ".Sorgu(ikinci el kitap)**");
                        ListBox3.Items.Add("kitap adı:" + İkincielKitap[i].KitapAdi);
                        ListBox3.Items.Add(" Yazar:" + İkincielKitap[i].Yazar);
                        ListBox3.Items.Add(" Tür:" + İkincielKitap[i].Tur);
                        ListBox3.Items.Add("sayfa: " + İkincielKitap[i].SayfaSayisi);
                        ListBox3.Items.Add(" fiyat:" + İkincielKitap[i].Fiyat);
                        ListBox3.Items.Add("-----------------------------------------------------  ");
                        b++;
                        KitapSorgu.Text = " ";

                    }
                }
                for (int k = 0; k < SifirKitap.Count; k++)
                {
                    if (SifirKitap[k].KitapAdi == KitapSorgu.Text)
                    {

                        ListBox3.Items.Add("**" + b + ".Sorgu(sıfır kitap)**");
                        ListBox3.Items.Add("kitap adı:" + SifirKitap[k].KitapAdi);
                        ListBox3.Items.Add(" Yazar:" + SifirKitap[k].Yazar);
                        ListBox3.Items.Add(" Tür:" + SifirKitap[k].Tur);
                        ListBox3.Items.Add("sayfa: " + SifirKitap[k].SayfaSayisi);
                        ListBox3.Items.Add(" fiyat:" + SifirKitap[k].Fiyat);
                        ListBox3.Items.Add("-----------------------------------------------------  ");
                        b++;
                        KitapSorgu.Text = " ";

                    }
                }
            }
            else if (İkincielKitap.Count == 0 && SifirKitap.Count == 0)
            {
                Response.Write("<script lang='JavaScript'>alert('Sistemde herhangi bir kitap olmadığı için sorgu yapılamıyor..!!!');</script>");
            }
            else
            {
                Response.Write("<script lang='JavaScript'>alert('Girilen bilgiler hatalı veya yanlış girildi.!!!');</script>");
            }

        }
    }
    
}