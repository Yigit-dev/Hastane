using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace IleriNet_Final2
{
    public partial class hasta_giris : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-YIGIT; Initial Catalog=KarliovaHastanesi; Integrated Security = True");
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /***********************HASTA GİRİŞ YAP BUTONU*********************************/
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_hasta_kayit WHERE tc='" + txtKimlik.Text  + "' and sifre='" + txtSifre.Text + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string ad = dr["ad"].ToString();
                string soyad = dr["soyad"].ToString();
                string adsoyad = ad +" "+ soyad;
                Session["user"] = txtKimlik.Text;
                Session["welcome"] = adsoyad.ToString();
                Response.Redirect("hasta_anasayfa.aspx");
            }
            else
            {
                pwdlb.Text = "Geçersiz tc veya şifre girildi lütfen kontrol ediniz.";
            }
            con.Close();
        }
    }
}