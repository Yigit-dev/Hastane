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
    public partial class admin_randevular : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-YIGIT; Initial Catalog=KarliovaHastanesi; Integrated Security = True");
        SqlDataReader dr;
        public void randevuListele()
        {
            con.Open();
            SqlDataAdapter randevular = new SqlDataAdapter("SELECT * FROM tbl_hasta_randevu ORDER BY tarih DESC", con);
            DataSet ds = new DataSet();
            randevular.Fill(ds);
            DG_Randevular.DataSource = ds;
            DG_Randevular.DataBind();
            con.Close();
            if (DG_Randevular.Rows.Count < 1)
            {
                lblMessage.Text = "Randevu bulunmamaktadır.";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GirisKontrolleri();
            BosKontrolleri();
            DDL_Doktor.AutoPostBack = true;
            DDL_Klinik.AutoPostBack = true;
            txtTakvim.ReadOnly = true;
            if (!Page.IsPostBack)
            {
                randevuListele();
                klinikDoldur();
            }
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
            SqlCommand komut = new SqlCommand("SELECT id, ad, soyad, klinik FROM tbl_doktor_kayit WHERE klinik='" + DDL_Klinik.SelectedItem.Value + "'", con);
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
        protected void GD_Randevular_SelectedIndexChanged(object sender, EventArgs e)
        {
            int satirIndex = DG_Randevular.SelectedIndex;
            GridViewRow satir = DG_Randevular.Rows[satirIndex];
            lblId.Text = satir.Cells[1].Text;
            txtDogumTarihi.Text = satir.Cells[5].Text;
            txtHastaAdi.Text = satir.Cells[3].Text;
            txtKanGrubu.Text = satir.Cells[6].Text;
            txtMail.Text = satir.Cells[10].Text;
            txtSikayet.Text = satir.Cells[7].Text;
            txtSoyad.Text = satir.Cells[4].Text;
            txtTakvim.Text = satir.Cells[12].Text;
            txtTelefon.Text = satir.Cells[11].Text;
            DDL_Klinik.Text = satir.Cells[8].Text;
            DDL_Doktor.Text = satir.Cells[9].Text;
            DDL_Saat.Text = satir.Cells[13].Text;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtTakvim.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("hasta_randevularim.aspx");
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            con.Open();
            if (lblId.Text != "")
            {
                SqlCommand guncelle = new SqlCommand("UPDATE tbl_hasta_randevu SET dogum_tarihi='"+txtDogumTarihi.Text+"',ad='"+txtHastaAdi.Text+"',soyad='"+txtSoyad.Text+"',kan_grubu='"+txtKanGrubu.Text+"',mail='"+txtMail.Text+"',sikayet='"+txtSikayet.Text+"',tarih='"+txtTakvim.Text+"',telefon='"+txtTelefon.Text+"',doktor='"+DDL_Doktor.Text+"',klinik='"+DDL_Klinik.Text+"' WHERE id = '" + lblId.Text + "' ", con);
                guncelle.ExecuteNonQuery();
                lblMessage.Text = "Kayıt başarıyla Güncellendi";
            }            
            con.Close();
            randevuListele();
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            con.Open();
            if (lblId.Text != "")
            {
                SqlCommand sil = new SqlCommand("DELETE FROM tbl_hasta_randevu WHERE id = '" + lblId.Text + "' ", con);
                sil.ExecuteNonQuery();
                lblMessage.Text = "Kayıt başarıyla Silindi";
            }
            con.Close();
            randevuListele();
        }
        public void GirisKontrolleri()
        {
            /**************************KONTROLLER***************************/
            RegularExpressionValidator1.ControlToValidate = "txtHastaAdi";
            RegularExpressionValidator1.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator1.ValidationExpression = "^[a-z]+$";
            RegularExpressionValidator2.ControlToValidate = "txtSoyad";
            RegularExpressionValidator2.Text = "Sadece büyük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator2.ValidationExpression = "^[A-Z]+$";
            RangeValidator1.ControlToValidate = "txtDogumTarihi";
            RangeValidator1.Text = "Doğum yerinin baş harfi büyük olmalı ve özel karakter kullanmayınız";
            RangeValidator1.MinimumValue = "01/01/1940";
            RangeValidator1.MaximumValue = "01/01/2020";
            RegularExpressionValidator3.ControlToValidate = "txtTelefon";
            RegularExpressionValidator3.Text = "Girdiğiniz telefon şu formatta olmalı: 0-000-000 00 00";
            RegularExpressionValidator3.ValidationExpression = "^\\d{1}-\\d{3}-\\d{3}\\s\\d{2}\\s\\d{2}$";
            RegularExpressionValidator4.ControlToValidate = "txtMail";
            RegularExpressionValidator4.Text = "Mail adresiniz şu formatta olmalı ad.soyad@xxx.xxx ve 12 karakteri geçmeyiniz";
            RegularExpressionValidator4.ValidationExpression = "^[a-z]{1,12}\\.[a-z]{1,12}@[a-z]{1,3}\\.[a-z]{1,3}";
            RegularExpressionValidator5.ControlToValidate = "txtSikayet";
            RegularExpressionValidator5.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator5.ValidationExpression = "^[a-z]+$";
            RegularExpressionValidator6.ControlToValidate = "txtKanGrubu";
            RegularExpressionValidator6.Text = "Doğru kan grubunu giriniz";
            RegularExpressionValidator6.ValidationExpression = "^\\D{5}$";

        }
        public void BosKontrolleri()
        {
            // ******************BOŞ KONTROLLERİ******************
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