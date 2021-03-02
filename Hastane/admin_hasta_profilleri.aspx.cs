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
    public partial class admin_hasta_profilleri : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-YIGIT; Initial Catalog=KarliovaHastanesi; Integrated Security = True");
        public void hastaProfilListele()
        {
            con.Open();
            SqlDataAdapter hastaProfil = new SqlDataAdapter("SELECT * FROM tbl_hasta_kayit", con);
            DataSet ds = new DataSet();
            hastaProfil.Fill(ds);
            DG_Profiller.DataSource = ds;
            DG_Profiller.DataBind();
            if (DG_Profiller.Rows.Count < 1)
            {
                lblMessage.Text = "Kayıtlı hasta yok";
            }
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            txtKimlik.ReadOnly = true;
            if (!Page.IsPostBack)
            {
                BosKontrolleri();
                GirisKontrolleri();
                hastaProfilListele();
            }
        }

        protected void guncelleBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            if (txtKimlik.Text != "")
            {
                SqlCommand guncelle = new SqlCommand("UPDATE tbl_hasta_kayit SET tc='" + txtKimlik.Text + "',sifre='" + txtSifre.Text + "', ad='" + txtIsim.Text + "', soyad='" + txtSoyad.Text + "', dogum_tarihi='" + txtDogumTarihi.Text + "', dogum_yeri='" + txtDogumYeri.Text + "', seri_no='" + txtSeriNo.Text + "', son_gecerlilik='" + txtSonGecerlilik.Text + "', kan_grubu='" + txtKanGrubu.Text + "', anne_adi='" + txtAnneAdi.Text + "', baba_adi='" + txtBabaAdi.Text + "', sgk='" + txtSgk.Text + "', telefon='" + txtTelefon.Text + "', adres='" + txtAdres.Text + "', mail='" + txtMail.Text + "' WHERE tc='" + txtKimlik.Text + "'", con);
                guncelle.ExecuteNonQuery();
                lblMessage.Text = "Kayıt başarıyla Güncellendi";
                hastaProfilListele();
            }
            else
            {
                lblMessage.Text = "Lütfen Kimlik numarasını giriniz";
            }
            con.Close();
        }

        protected void silBtn_Click(object sender, EventArgs e)
        {
            //Hasta Profilini Siler
            con.Open();
            if (txtKimlik.Text != "")
            {
                SqlCommand sil = new SqlCommand("DELETE FROM tbl_hasta_kayit WHERE id = '" + lblId.Text + "'", con);
                sil.ExecuteNonQuery();
                lblMessage.Text = "Kaydınız başarıyla Silindi";
            }
            con.Close();
            hastaProfilListele();

        }
        public void temizle()
        {
            txtKimlik.Text = "";
            txtAdres.Text = "";
            txtAnneAdi.Text = "";
            txtBabaAdi.Text = "";
            txtDogumTarihi.Text = "";
            txtDogumYeri.Text = "";
            txtIsim.Text = "";
            txtKanGrubu.Text = "";
            txtMail.Text = "";
            txtSeriNo.Text = "";
            txtSgk.Text = "";
            txtSifre.Text = "";
            txtSifreKontrol.Text = "";
            txtSonGecerlilik.Text = "";
            txtSoyad.Text = "";
            txtTelefon.Text = "";
        }
        protected void Resbtn_Click(object sender, EventArgs e)
        {
            temizle();
        }

        protected void DG_Profiller_SelectedIndexChanged(object sender, EventArgs e)
        {
            int satirIndex = DG_Profiller.SelectedIndex;
            GridViewRow satir = DG_Profiller.Rows[satirIndex];
            lblId.Text = satir.Cells[1].Text;
            txtKimlik.Text = satir.Cells[3].Text;
            txtSifre.Text = satir.Cells[4].Text;
            txtSifreKontrol.Text = satir.Cells[4].Text;
            txtIsim.Text = satir.Cells[5].Text;
            txtSoyad.Text = satir.Cells[6].Text;
            txtDogumTarihi.Text = satir.Cells[7].Text;
            txtDogumYeri.Text = satir.Cells[8].Text;
            txtSeriNo.Text = satir.Cells[9].Text;
            txtSonGecerlilik.Text = satir.Cells[10].Text;
            txtKanGrubu.Text = satir.Cells[11].Text;
            txtAnneAdi.Text = satir.Cells[13].Text;
            txtBabaAdi.Text = satir.Cells[14].Text;
            txtSgk.Text = satir.Cells[15].Text;
            txtTelefon.Text = satir.Cells[16].Text;
            txtAdres.Text = satir.Cells[17].Text;
            txtMail.Text = satir.Cells[18].Text;
        }
        public void GirisKontrolleri()
        {
            /**************************KONTROLLER***************************/
            RegularExpressionValidator1.ControlToValidate = "txtIsim";
            RegularExpressionValidator1.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator1.ValidationExpression = "^[a-z]+$";
            RegularExpressionValidator2.ControlToValidate = "txtSoyad";
            RegularExpressionValidator2.Text = "Sadece büyük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator2.ValidationExpression = "^[A-Z]+$";
            RegularExpressionValidator3.ControlToValidate = "txtKimlik";
            RegularExpressionValidator3.Text = "Tc No nuz 11 karakterden oluşmalı özel karakterler girmeyiniz";
            RegularExpressionValidator3.ValidationExpression = "^\\d{11}$";
            RegularExpressionValidator4.ControlToValidate = "txtSifre";
            RegularExpressionValidator4.Text = "Şifreniz en az 6 en fazla 10 karakter olmalı 2 Büyük harf, 2 Küçük harf, 4 Numara ve 1 Özel Karakter içermeli";
            RegularExpressionValidator4.ValidationExpression = "^(?=.*[a-z]){2,}(?=.*[A-Z]){2,}(?=.*\\d){4}(?=.*[$@$!%*?&]){1,}[A-Za-z\\d$@$!%*?&]{8,10}";
            RangeValidator1.ControlToValidate = "txtDogumTarihi";
            RangeValidator1.Text = "Doğum tarihiniz 1940 ile 2020 arasında olmalıdır";
            RangeValidator1.MinimumValue = "01/01/1940";
            RangeValidator1.MaximumValue = "01/01/2020";
            RegularExpressionValidator6.ControlToValidate = "txtDogumYeri";
            RegularExpressionValidator6.Text = "Doğum yerinin baş harfi büyük olmalı ve özel karakter kullanmayınız";
            RegularExpressionValidator6.ValidationExpression = "^[A-Z][a-z]+$";
            RegularExpressionValidator7.ControlToValidate = "txtSeriNo";
            RegularExpressionValidator7.Text = "Seri No 9 haneli olmalı";
            RegularExpressionValidator7.ValidationExpression = "^\\w{9}$";
            RangeValidator2.ControlToValidate = "txtSonGecerlilik";
            RangeValidator2.Text = "Son geçerlilik 2021 ile 2040 arası olmalıdır";
            RangeValidator2.MinimumValue = "01/01/2021";
            RangeValidator2.MaximumValue = "01/01/2040";
            RegularExpressionValidator9.ControlToValidate = "txtKanGrubu";
            RegularExpressionValidator9.Text = "Kan Grubu Giriniz";
            RegularExpressionValidator9.ValidationExpression = "^\\D{5}$";
            RegularExpressionValidator10.ControlToValidate = "txtAnneAdi";
            RegularExpressionValidator10.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator10.ValidationExpression = "^[a-z]+$";
            RegularExpressionValidator11.ControlToValidate = "txtBabaAdi";
            RegularExpressionValidator11.Text = "Sadece küçük harf giriniz ve özel karakter kullanmayınız";
            RegularExpressionValidator11.ValidationExpression = "^[a-z]+$";
            RegularExpressionValidator12.ControlToValidate = "txtSgk";
            RegularExpressionValidator12.Text = "SGK No 26 haneli olmalıdır";
            RegularExpressionValidator12.ValidationExpression = "^\\d{26}$";
 
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