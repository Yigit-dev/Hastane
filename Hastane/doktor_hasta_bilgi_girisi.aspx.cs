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
    public partial class doktor_hasta_bilgi_girisi : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-YIGIT; Initial Catalog=KarliovaHastanesi; Integrated Security = True");

        public void onayliRandevuListele()
        {
            con.Open();
            SqlDataAdapter onaylanmisrandevularim = new SqlDataAdapter("SELECT * FROM tbl_hasta_randevu WHERE doktor='" + Session["doktor_klinik"] + "' AND onay='True' ORDER BY tarih DESC", con);
            DataSet ds = new DataSet();
            onaylanmisrandevularim.Fill(ds);
            DG_DoktorHasta.DataSource = ds;
            DG_DoktorHasta.DataBind();
            if (DG_DoktorHasta.Rows.Count < 1)
            {
                lblMessage.Text = "Kayıtlı randevunuz yok veya doktor tarafından onaylanmamış";
            }
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GirisKontrolleri();
            bosKontrolleri();
            DG_DoktorHasta.ShowFooter = true;
            DG_DoktorHasta.ShowHeaderWhenEmpty = true;
            if (!Page.IsPostBack)
            {
                onayliRandevuListele();
            }
        }
        protected void DG_DoktorHasta_SelectedIndexChanged(object sender, EventArgs e)
        {
            int satirIndex = DG_DoktorHasta.SelectedIndex;
            GridViewRow satir = DG_DoktorHasta.Rows[satirIndex];
            txtId.Text = satir.Cells[1].Text;
            txtTc.Text = satir.Cells[2].Text;
            txtAd.Text = satir.Cells[3].Text;
            txtSoyad.Text = satir.Cells[4].Text;
            txtSikayet.Text = satir.Cells[7].Text;
            txtKlinik.Text = satir.Cells[8].Text;
            txtDoktor.Text = satir.Cells[9].Text;
            txtTarih.Text = satir.Cells[12].Text;
            txtSaat.Text = satir.Cells[13].Text;
        }
        protected void btnEkle_Click(object sender, EventArgs e)
        {
            con.Open();
            if (txtTc.Text != "" && txtAd.Text != "" && txtSoyad.Text != "" && txtIlac.Text != "" && txtDoktor.Text != "" && txtDoktorGorusu.Text != "" && txtSikayet.Text != "" && txtTarih.Text != "" && txtSaat.Text != "" && txtId.Text != "")
            {
                SqlCommand ekle = new SqlCommand("INSERT INTO tbl_doktor_hasta_bilgi(tc,hasta_adi,hasta_soyadi,sikayet,doktor,klinik,ilac,doktor_gorusu,tarih,saat) VALUES ('" + txtTc.Text + "','" + txtAd.Text + "','" + txtSoyad.Text + "','" + txtSikayet.Text + "','" + txtDoktor.Text + "','" + txtKlinik.Text + "','" + txtIlac.Text + "','" + txtDoktorGorusu.Text + "','" + txtTarih.Text + "','" + txtSaat.Text + "')", con);
                ekle.ExecuteNonQuery();
            }
            con.Close();
            lblMessage.Text = "Hastaya Başarıyla Gönderildi";
        }
        public void GirisKontrolleri()
        {
            /**************************KONTROLLER***************************/
            RegularExpressionValidator1.ControlToValidate = "txtAd";
            RegularExpressionValidator1.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator1.ValidationExpression = "^[a-z]+$";
            RegularExpressionValidator2.ControlToValidate = "txtSoyad";
            RegularExpressionValidator2.Text = "Sadece büyük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator2.ValidationExpression = "^[A-Z]+$";
            RegularExpressionValidator3.ControlToValidate = "txtTc";
            RegularExpressionValidator3.Text = "Tc No nuz 11 karakterden oluşmalı özel karakterler girmeyiniz";
            RegularExpressionValidator3.ValidationExpression = "^\\d{11}$";
            RegularExpressionValidator4.ControlToValidate = "txtSikayet";
            RegularExpressionValidator4.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator4.ValidationExpression = "^[a-z]+$";
            RegularExpressionValidator5.ControlToValidate = "txtDoktorGorusu";
            RegularExpressionValidator5.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator5.ValidationExpression = "^[a-z]+$";
            RegularExpressionValidator6.ControlToValidate = "txtIlac";
            RegularExpressionValidator6.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator6.ValidationExpression = "^[a-z]+$";

        }
        void bosKontrolleri()
        {
            RequiredFieldValidator11.ControlToValidate = "txtId";
            RequiredFieldValidator11.Text = "Id alanını boş bırakmayınız";
            RequiredFieldValidator2.ControlToValidate = "txtAd";
            RequiredFieldValidator2.Text = "Ad alanını boş bırakmayınız";
            RequiredFieldValidator3.ControlToValidate = "txtSoyad";
            RequiredFieldValidator3.Text = "Soyadı boş bırakmayınız";
            RequiredFieldValidator4.ControlToValidate = "txtSikayet";
            RequiredFieldValidator4.Text = "Şikayetinizi boş bırakmayınız";
            RequiredFieldValidator5.ControlToValidate = "txtDoktor";
            RequiredFieldValidator5.Text = "Doktor Alanını boş bırakmayınız";
            RequiredFieldValidator6.ControlToValidate = "txtKlinik";
            RequiredFieldValidator6.Text = "Kliniği boş bırakmayınız";
            RequiredFieldValidator7.ControlToValidate = "txtTarih";
            RequiredFieldValidator7.Text = "Tarihi boş bırakmayınız";
            RequiredFieldValidator8.ControlToValidate = "txtSaat";
            RequiredFieldValidator8.Text = "Saati boş bırakmayınız";
            RequiredFieldValidator9.ControlToValidate = "txtIlac";
            RequiredFieldValidator9.Text = "İlaç Alanını boş bırakmayınız";
            RequiredFieldValidator10.ControlToValidate = "txtDoktorGorusu";
            RequiredFieldValidator10.Text = "Doktor Görüşünü Giriniz";
            RequiredFieldValidator1.ControlToValidate = "txtTc";
            RequiredFieldValidator1.Text = "Kimliğinizi boş bırakmayınız";
        }
    }
}