using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OOP_Proje
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            List<Kitaplar.UyeKayit> uye = (List<Kitaplar.UyeKayit>)Session["Bilgi"];
            for (int i = 0; i < uye.Count; i++)
            {
                if (txt_ad.Text==uye[i].KullaniciAd && txt_parola.Text==uye[i].Parola)
                {
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    Response.Write("<script lang='JavaScript'>alert('Kullanıcı Adı veya Parola Hatalı..');</script>");
                }

            }
            

        }
    }
}