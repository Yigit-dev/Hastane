using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace IleriNet_Final2
{
    public partial class hasta_randevularim : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-YIGIT; Initial Catalog=KarliovaHastanesi; Integrated Security = True");
        public void onayliRandevuListele()
        {
            con.Open();
            SqlDataAdapter onaylanmisrandevularim = new SqlDataAdapter("SELECT * FROM tbl_hasta_randevu WHERE kimlik='" + Session["user"] + "' AND onay='True' ORDER BY tarih DESC", con);
            DataSet ds = new DataSet();
            onaylanmisrandevularim.Fill(ds);
            DG_onaylanmisRandevular.DataSource = ds;
            DG_onaylanmisRandevular.DataBind();
            if (DG_onaylanmisRandevular.Rows.Count < 1)
            {
                Label2.Text = "Kayıtlı randevunuz yok veya doktor tarafından onaylanmamış";
            }
            con.Close();
        }
        public void randevuListele()
        {
            con.Open();
            SqlDataAdapter randevular = new SqlDataAdapter("SELECT * FROM tbl_hasta_randevu WHERE kimlik='" + Session["user"] + "' AND onay='False'", con);
            DataSet ds = new DataSet();
            randevular.Fill(ds);
            DG_randevular.DataSource = ds;
            DG_randevular.DataBind();
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            bosKontrolleri();
            DG_randevular.ShowFooter = true;
            DG_onaylanmisRandevular.ShowFooter = true;
            DG_randevular.ShowHeaderWhenEmpty = true;
            DG_onaylanmisRandevular.ShowHeaderWhenEmpty = true;
            if (Page.IsPostBack)
            {
                onayliRandevuListele();
                randevuListele();
                randevuDoldur();
            }
        }

        public void randevuDoldur()
        {
            con.Open();
            //kimliğiyle giriş yapan hastanın bilgilerine göre textbox lar otomatik doluyor
            SqlCommand hasta = new SqlCommand("SELECT id,tarih,saat FROM tbl_hasta_randevu WHERE kimlik='" + Session["user"] + "'", con);
            hasta.ExecuteNonQuery();
            SqlDataReader dr = hasta.ExecuteReader();
            if (dr.Read())
            {
                txtId.Text    = dr["id"].ToString();
                txtTarih.Text = dr["tarih"].ToString();
                DDL_Saat.Text = dr["saat"].ToString();                
            }     
            con.Close();
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            bosKontrolleri();
            //HASTA BURADA TAKVİM VE SAATİ GÜNCELLEYEBİLİR DİĞER BİLGİLERİNİ GÜNCELLEMEK İSTERSE PROFİLİM SAYFASINA GİTMELİDİR
            con.Open();
            if (txtId.Text != "")
            {
                bool onay = false; // hasta kaydını güncellediği zaman doktorun onayı False dönecek
                SqlCommand guncelle = new SqlCommand("UPDATE tbl_hasta_randevu SET tarih='" + txtTarih.Text + "', saat='" + DDL_Saat.Text + "', onay='" + onay + "' WHERE id = '" + txtId.Text + "' ", con);
                guncelle.ExecuteNonQuery();
                lblMessage.Text = "Kayıt başarıyla Güncellendi";
            }
            else
            {
                lblMessage.Text = "Lütfen Güncelleyeceğiniz kaydın ID numarasını giriniz";
            }

            con.Close();
            randevuDoldur();
            onayliRandevuListele();
            randevuListele();
        }
        protected void btnSil_Click(object sender, EventArgs e)
        {
            //HASTANIN İSTEDİĞİ RANDEVUYU SİLEBİLECEĞİ BUTON
            con.Open();
            if (txtId.Text != "")
            {
                SqlCommand sil = new SqlCommand("DELETE FROM tbl_hasta_randevu WHERE id = '" + txtId.Text + "'", con);
                sil.ExecuteNonQuery();
                lblMessage.Text = "Randevunuz başarıyla silindi";
            }
            else
            {
                lblMessage.Text = "Lütfen Sileceğiniz kaydın ID numarasını giriniz";
            }
            con.Close();
            onayliRandevuListele();
            randevuListele();
        }

        protected void Takvim_SelectionChanged(object sender, EventArgs e)
        {
            txtTarih.Text = Takvim.SelectedDate.ToShortDateString();
        }

        void bosKontrolleri()
        {
            RequiredFieldValidator1.ControlToValidate = "txtId";
            RequiredFieldValidator1.Text = "Kimliğinizi boş bırakmayınız";
            RequiredFieldValidator2.ControlToValidate = "txtTarih";
            RequiredFieldValidator2.Text = "Kimliğinizi boş bırakmayınız";
        }
    }
}