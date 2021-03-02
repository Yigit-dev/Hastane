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
    public partial class hasta_randevu_al : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-YIGIT; Initial Catalog=KarliovaHastanesi; Integrated Security = True");
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtKimlik.ReadOnly = true;
            BosKontrolleri();
            DDL_Doktor.AutoPostBack = true;
            DDL_Klinik.AutoPostBack = true;
            txtTakvim.ReadOnly = true;
            if (!Page.IsPostBack)
            {
                GirisKontrolleri();
                hastaDoldur();
                klinikDoldur();
                DDL_Klinik.Items.Insert(0, "Seçim Yap");
            }
        }
        void hastaDoldur()
        {
            con.Open();
            //kimliğiyle giriş yapan hastanın bilgilerine göre textbox lar otomatik doluyor
            SqlCommand hasta = new SqlCommand("SELECT tc,ad,soyad,cinsiyet,kan_grubu,dogum_tarihi,telefon,mail FROM tbl_hasta_kayit WHERE tc='" + Session["user"] + "'", con);
            hasta.ExecuteNonQuery();
            SqlDataReader dr = hasta.ExecuteReader();           
            if (dr.Read())
            {             
                txtKimlik.Text      = dr["tc"].ToString();
                txtHastaAdi.Text    = dr["ad"].ToString();
                txtSoyad.Text       = dr["soyad"].ToString();
                txtMail.Text        = dr["mail"].ToString();
                txtTelefon.Text     = dr["telefon"].ToString();
                txtKanGrubu.Text    = dr["kan_grubu"].ToString();
                txtDogumTarihi.Text = dr["dogum_tarihi"].ToString();
            }
            con.Close();
        }
        void klinikDoldur()
        {
            /************KLİNİK TABLOSUNDAKİ VERİLERE GÖRE DROPDOWNLİST NESNESİNİ DOLDURUYORUM*****************/
            con.Open();
            SqlDataAdapter klinik = new SqlDataAdapter("SELECT klinik FROM tbl_klinik", con);
            DataSet ds = new DataSet();
            klinik.Fill(ds);
            DDL_Klinik.DataSource = ds;
            DDL_Klinik.DataTextField = "klinik";
            DDL_Klinik.DataBind();
            con.Close();
        }
        protected void DDL_Klinik_SelectedIndexChanged(object sender, EventArgs e)
        {
            /**************KLİNİK DropDownListinin seçilen item ine göre doktor tablosundaki kliniğe uygun doktoru getiriyorum**********************/
            SqlCommand komut = new SqlCommand("SELECT id, ad, soyad, klinik FROM tbl_doktor_kayit WHERE klinik='"+ DDL_Klinik.SelectedItem.Value +"'", con);
            try
            {
                con.Open();
                SqlDataReader reader = komut.ExecuteReader();
                DDL_Doktor.DataSource = reader;
                DDL_Doktor.DataTextField = "ad";
                DDL_Doktor.DataBind(); //verileri Drop Down List e bağladım
                reader.Close();
            }
            catch
            {
                Response.Write("Bir Hata Oluştu");
            }
            con.Close();
        }

        protected void btnRandevuAl_Click(object sender, EventArgs e)
        {
            bool doktr_onayi = false;
            /****************HASTA RANDEVU ALMA BÖLÜMÜ*******************/
            con.Open();
            if (txtKimlik.Text != "" && txtHastaAdi.Text != "" && txtKanGrubu.Text != "" && txtSikayet.Text != "" && txtSoyad.Text != "" && DDL_Klinik.SelectedItem.Value != "" && DDL_Doktor.SelectedItem.Value != "" && txtMail.Text != "" && txtDogumTarihi.Text != "")
            {
                SqlCommand ekle = new SqlCommand("INSERT INTO tbl_hasta_randevu(kimlik,ad,soyad,dogum_tarihi,kan_grubu,sikayet,klinik,doktor,mail,telefon,tarih,saat,onay) VALUES (" +
                    "'" + txtKimlik.Text + "'," +
                    "'" + txtHastaAdi.Text + "'," +
                    "'" + txtSoyad.Text + "'," +
                    "'" + txtDogumTarihi.Text + "'," +
                    "'" + txtKanGrubu.Text + "'," +
                    "'" + txtSikayet.Text + "'," +
                    "'" + DDL_Klinik.SelectedValue+ "'," +
                    "'" + DDL_Doktor.SelectedValue + "'," +
                    "'" + txtMail.Text + "'," +
                    "'" + txtTelefon.Text + "'," +
                    "'" + txtTakvim.Text + "'," +
                    "'" + DDL_Saat.SelectedValue + "', " +
                    "'"+ doktr_onayi +"')", con);
                ekle.ExecuteNonQuery();
            }
            con.Close();
            Label4.Text = "Randevu Başarıyla Alındı Doktorunuzun onayını Randevularım sayfasından takip edebilirsiniz.";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("hasta_randevu_al.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtTakvim.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("hasta_randevularim.aspx");
        }
        public void GirisKontrolleri()
        {
            /**************************KONTROLLER***************************/
            RegularExpressionValidator1.ControlToValidate = "txtKimlik";
            RegularExpressionValidator1.Text = "Tc No nuz 11 karakterden oluşmalı özel karakterler girmeyiniz";
            RegularExpressionValidator1.ValidationExpression = "^\\d{11}$";
            RegularExpressionValidator2.ControlToValidate = "txtHastaAdi";
            RegularExpressionValidator2.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator2.ValidationExpression = "^\\w+$";
            RegularExpressionValidator3.ControlToValidate = "txtSoyad";
            RegularExpressionValidator3.Text = "Sadece büyük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator3.ValidationExpression = "^\\w+$";
            RangeValidator1.ControlToValidate = "txtDogumTarihi";
            RangeValidator1.Text = "Doğum Tarihiniz 1940 ile 2020 arası olabilir /";
            RangeValidator1.MinimumValue = "01/01/1940";
            RangeValidator1.MaximumValue = "01/01/2020";
            RegularExpressionValidator4.ControlToValidate = "txtTelefon";
            RegularExpressionValidator4.Text = "Girdiğiniz telefon şu formatta olmalı: 0-000-000 00 00";
            RegularExpressionValidator4.ValidationExpression = "^\\d{1}-\\d{3}-\\d{3}\\s\\d{2}\\s\\d{2}$";
            RegularExpressionValidator5.ControlToValidate = "txtMail";
            RegularExpressionValidator5.Text = "Mail adresiniz şu formatta olmalı ad.soyad@xxx.xxx ve 12 karakteri geçmeyiniz";
            RegularExpressionValidator5.ValidationExpression = "^[a-z]{1,12}\\.[a-z]{1,12}@[a-z]{1,3}\\.[a-z]{1,3}";
            RegularExpressionValidator6.ControlToValidate = "txtSikayet";
            RegularExpressionValidator6.Text = "Şikayetinizi Girin";
            RegularExpressionValidator6.ValidationExpression = "^\\w+";
            RegularExpressionValidator7.ControlToValidate = "txtKanGrubu";
            RegularExpressionValidator7.Text = "Kan Grubunuzu Girin";
            RegularExpressionValidator7.ValidationExpression = "^\\w+";

        }
        public void BosKontrolleri()
        {
            // ******************BOŞ KONTROLLERİ******************
            RequiredFieldValidator1.ControlToValidate = "txtKimlik";
            RequiredFieldValidator1.Text = "Kimliğinizi boş bırakmayınız";
            RequiredFieldValidator10.ControlToValidate = "txtSoyad";
            RequiredFieldValidator10.Text = "Soyadınızı boş bırakmayınız";
            RequiredFieldValidator2.ControlToValidate = "txtHastaAdi";
            RequiredFieldValidator2.Text = "Hasta Adını boş bırakmayınız";
            RequiredFieldValidator3.ControlToValidate = "txtSikayet";
            RequiredFieldValidator3.Text = "Şikayet Bölümünü boş bırakmayınız";
            RequiredFieldValidator4.ControlToValidate = "txtKanGrubu";
            RequiredFieldValidator4.Text = "Kan Grubunuzu boş bırakmayınız";
            RequiredFieldValidator5.ControlToValidate = "DDL_Klinik";
            RequiredFieldValidator5.Text = "Klinik Seçiniz";
            RequiredFieldValidator6.ControlToValidate = "DDL_Doktor";
            RequiredFieldValidator6.Text = "Doktor Seçiniz";
            RequiredFieldValidator7.ControlToValidate = "txtTelefon";
            RequiredFieldValidator7.Text = "Telefon bölümünü bırakmayınız";
            RequiredFieldValidator8.ControlToValidate = "txtMail";
            RequiredFieldValidator8.Text = "Mail adresiniz boş bırakmayınız";
            RequiredFieldValidator9.ControlToValidate = "txtDogumTarihi";
            RequiredFieldValidator9.Text = "Doğum Tarihini boş bırakmayınız";
            RequiredFieldValidator11.ControlToValidate = "txtTakvim";
            RequiredFieldValidator11.Text = "Randevu Tarihini Seçiniz";
            RequiredFieldValidator12.ControlToValidate = "DDL_Saat";
            RequiredFieldValidator12.Text = "Randevu Saatini Seçiniz";
        }

    }
}