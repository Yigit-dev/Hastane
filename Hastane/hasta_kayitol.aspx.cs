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
    public partial class hasta_kayitol : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-YIGIT; Initial Catalog=KarliovaHastanesi; Integrated Security = True");
 
        bool cinsiyet;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GirisKontrolleri();
                BosKontrolleri();
            }
        }
        protected void rdbKadin_CheckedChanged(object sender, EventArgs e)
        {
            
            if (rdbKadin.Checked == true)
            {
                cinsiyet = true;
            }
            else
            {
                cinsiyet = false;
            }
        }

        protected void rdbErkek_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbErkek.Checked == true)
            {
                cinsiyet = false;
            }
            else
            {
                cinsiyet = true;
            }
        }

        protected void subbtn_Click(object sender, EventArgs e)
        {
            con.Open();
            if (txtKimlik.Text != "" && txtIsim.Text != "" && txtSoyad.Text != "" && txtSifre.Text != "" && txtSifreKontrol.Text != "" && txtDogumTarihi.Text != "" && txtDogumYeri.Text != "" && txtSeriNo.Text != "" && txtAnneAdi.Text != "" && txtSonGecerlilik.Text != "" && txtBabaAdi.Text != "" && txtKanGrubu.Text != "" && txtSgk.Text != "")
            {
                SqlCommand ekle = new SqlCommand("INSERT INTO tbl_hasta_kayit(tc,sifre,ad,soyad,dogum_yeri,dogum_tarihi,seri_no,son_gecerlilik,kan_grubu,cinsiyet,anne_adi,baba_adi,sgk) values ('" + txtKimlik.Text + "','" + txtSifre.Text + "','" + txtIsim.Text + "','" + txtSoyad.Text + "','" + txtDogumYeri.Text + "','" + txtDogumTarihi.Text + "','" + txtSeriNo.Text + "','" + txtSonGecerlilik.Text + "','" + txtKanGrubu.Text + "','" + cinsiyet + "','" + txtAnneAdi.Text + "','" + txtBabaAdi.Text + "','" + txtSgk.Text + "')", con);
                ekle.ExecuteNonQuery();
            }
            con.Close();
            lblMessage.Text = "Sisteme Başarıyla Kayıt oldunuz";
        }

        protected void Resbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("hasta_kayitol.aspx");

        }

        protected void canbtn_Click(object sender, EventArgs e)
        {
           Response.Redirect("hasta_giris.aspx");
        }
        public void GirisKontrolleri()
        {
            /**************************KONTROLLER***************************/
            RegularExpressionValidator1.ControlToValidate = "txtIsim";
            RegularExpressionValidator1.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator1.ValidationExpression = "^\\w+$";
            RegularExpressionValidator2.ControlToValidate = "txtSoyad";
            RegularExpressionValidator2.Text = "Sadece büyük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator2.ValidationExpression = "^\\w+$";
            RegularExpressionValidator3.ControlToValidate = "txtKimlik";
            RegularExpressionValidator3.Text = "Tc No nuz 11 karakterden oluşmalı özel karakterler girmeyiniz";
            RegularExpressionValidator3.ValidationExpression = "^\\d{11}$";
            RegularExpressionValidator4.ControlToValidate = "txtSifre";
            RegularExpressionValidator4.Text = "Şifreniz en az 6 en fazla 10 karakter olmalı 2 Büyük harf, 2 Küçük harf, 4 Numara ve 1 Özel Karakter içermeli";
            RegularExpressionValidator4.ValidationExpression = "^(?=.*[a-z]){2,}(?=.*[A-Z]){2,}(?=.*\\d){4}(?=.*[$@$!%*?&]){1,}[A-Za-z\\d$@$!%*?&]{8,10}";
            RangeValidator1.ControlToValidate = "txtDogumTarihi";
            RangeValidator1.Text = "Doğum yerinin baş harfi büyük olmalı ve özel karakter kullanmayınız";
            RangeValidator1.MinimumValue = "01/01/1940";
            RangeValidator1.MaximumValue = "01/01/2020";
            RegularExpressionValidator6.ControlToValidate = "txtDogumYeri";
            RegularExpressionValidator6.Text = "Doğum yerinin baş harfi büyük olmalı ve özel karakter kullanmayınız";
            RegularExpressionValidator6.ValidationExpression = "^[A-Z][a-z]+$";
            RegularExpressionValidator7.ControlToValidate = "txtSeriNo";
            RegularExpressionValidator7.Text = "Seri No yu boş bırakmayınız";
            RegularExpressionValidator7.ValidationExpression = "^\\w{9}$"; ;
            RangeValidator2.ControlToValidate = "txtSonGecerlilik";
            RangeValidator2.Text = "Son Geçerlilik Bölümünü";
            RangeValidator2.MinimumValue = "01/01/2021";
            RangeValidator2.MaximumValue = "01/01/2040";
            RegularExpressionValidator8.ControlToValidate = "txtKanGrubu";
            RegularExpressionValidator8.Text = "Doğru kan grubu giriniz";
            RegularExpressionValidator8.ValidationExpression = "^\\w+$";
            RegularExpressionValidator9.ControlToValidate = "txtAnneAdi";
            RegularExpressionValidator9.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator9.ValidationExpression = "^\\w+$";
            RegularExpressionValidator10.ControlToValidate = "txtBabaAdi";
            RegularExpressionValidator10.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator10.ValidationExpression = "^\\w+$";
            RegularExpressionValidator11.ControlToValidate = "txtSgk";
            RegularExpressionValidator11.Text = "SGK No 26 haneli olmalıdır";
            RegularExpressionValidator11.ValidationExpression = "^\\d{26}$";
            RegularExpressionValidator12.ControlToValidate = "txtAdres";
            RegularExpressionValidator12.Text = "Adres girin";
            RegularExpressionValidator12.ValidationExpression = "^\\D+$";
            RegularExpressionValidator13.ControlToValidate = "txtTelefon";
            RegularExpressionValidator13.Text = "Girdiğiniz telefon şu formatta olmalı: 0-000-000 00 00";
            RegularExpressionValidator13.ValidationExpression = "^\\d{1}-\\d{3}-\\d{3}\\s\\d{2}\\s\\d{2}$";
            RegularExpressionValidator14.ControlToValidate = "txtMail";
            RegularExpressionValidator14.Text = "Mail adresiniz şu formatta olmalı ad.soyad@xxx.xxx ve 12 karakteri geçmeyiniz"; ;
            RegularExpressionValidator14.ValidationExpression = "^[a-z]{1,12}\\.[a-z]{1,12}@[a-z]{1,3}\\.[a-z]{1,3}";
        }
        public void BosKontrolleri()
        {
            // ******************BOŞ KONTROLLERİ******************
            RequiredFieldValidator1.ControlToValidate = "txtIsim";
            RequiredFieldValidator1.Text = "Adınızı boş bırakmayınız";
            RequiredFieldValidator2.ControlToValidate = "txtSoyad";
            RequiredFieldValidator2.Text = "Soyadınız boş bırakmayınız";
            RequiredFieldValidator3.ControlToValidate = "txtKimlik";
            RequiredFieldValidator3.Text = "Kimlik Numaranızı boş bırakmayınız";
            RequiredFieldValidator4.ControlToValidate = "txtSifre";
            RequiredFieldValidator4.Text = "Şifrenizi boş bırakmayınız";
            RequiredFieldValidator5.ControlToValidate = "txtSifreKontrol";
            RequiredFieldValidator5.Text = "Şifrenizi boş bırakmayınız";
            RequiredFieldValidator6.ControlToValidate = "txtDogumTarihi";
            RequiredFieldValidator6.Text = "Doğum Tarihinizi boş bırakmayınız";
            RequiredFieldValidator7.ControlToValidate = "txtDogumYeri";
            RequiredFieldValidator7.Text = "Doğum Yerinizi boş bırakmayınız";
            RequiredFieldValidator8.ControlToValidate = "txtSeriNo";
            RequiredFieldValidator8.Text = "Seri No'yu boş bırakmayınız";
            RequiredFieldValidator9.ControlToValidate = "txtSonGecerlilik";
            RequiredFieldValidator9.Text = "Son Geçerlilik Tarihini boş bırakmayınız";
            RequiredFieldValidator10.ControlToValidate = "txtKanGrubu";
            RequiredFieldValidator10.Text = "Kan Grubunu boş bırakmayınız";
            RequiredFieldValidator11.ControlToValidate = "txtAdres";
            RequiredFieldValidator11.Text = "Adresinizi boş bırakmayınız";
            RequiredFieldValidator12.ControlToValidate = "txtAnneAdi";
            RequiredFieldValidator12.Text = "Anne Adınızı boş bırakmayınız";
            RequiredFieldValidator13.ControlToValidate = "txtBabaAdi";
            RequiredFieldValidator13.Text = "Baba Adınızı boş bırakmayınız";
            RequiredFieldValidator14.ControlToValidate = "txtSgk";
            RequiredFieldValidator14.Text = "Sgk No'nuzu boş bırakmayınız";
            RequiredFieldValidator15.ControlToValidate = "txtTelefon";
            RequiredFieldValidator15.Text = "Telefon numaranızı boş bırakmayınız";
            RequiredFieldValidator16.ControlToValidate = "txtMail";
            RequiredFieldValidator16.Text = "Mail Adresinizi boş bırakmayınız";
            // **********************ŞİFRE DOĞRULAMA****************
            CompareValidator1.ControlToValidate = "txtSifreKontrol";
            CompareValidator1.ControlToCompare = "txtSifre";
            CompareValidator1.Text = "Girmiş olduğunuz şifre doğrulanamadı lütfen tekrar kontrol ediniz.";
        }
    }
}