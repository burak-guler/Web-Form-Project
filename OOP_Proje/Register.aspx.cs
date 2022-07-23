using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OOP_Proje
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Response.Write("<script lang='JavaScript'>alert('Girilen Kullanıcı Adı Kullanılmaktadır.!');</script>");
        static public List<Kitaplar.UyeKayit> Kullanici = new List<Kitaplar.UyeKayit>();
        protected void Button1_Click(object sender, EventArgs e)
        {
            Kitaplar.UyeKayit kisi = new Kitaplar.UyeKayit(txt_kullaniciad.Text,txt_email.Text,txt_parola.Text,txt_parolaonay.Text);
            if (txt_parola.Text!=txt_parolaonay.Text)
            {
                Response.Write("<script lang='JavaScript'>alert('Girilen Parolalar Uyuşmamaktadır.!');</script>");
                txt_email.Text = "";
                txt_kullaniciad.Text = "";
                txt_parola.Text = "";
                txt_parolaonay.Text = "";
            }
            else
            {
                Kullanici.Add(kisi);
                Response.Write("<script lang='JavaScript'>alert('Kayıt başarılı Giriş Yap! tıklayarak giriş yapınız.!');</script>");
                txt_email.Text = "";
                txt_kullaniciad.Text = "";
                txt_parola.Text = "";
                txt_parolaonay.Text = "";

            }
           // if (Kullanici.Count >= 2)
          //  {
              /*  for (int i = 0; i < Kullanici.Count; i++)
                {
                    var ara = Kullanici.Where(p => p.KullaniciAd == txt_kullaniciad.Text).ToList();
                    txt_email.Text = ara.Count.ToString();

                }
                */ 
            Session["Bilgi"] = Kullanici;

            

        }
    }
}