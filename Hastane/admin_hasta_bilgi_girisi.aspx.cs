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
    public partial class admin_hasta_bilgi_girisi : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-YIGIT; Initial Catalog=KarliovaHastanesi; Integrated Security = True");

        public void onayliRandevuListele()
        {
            con.Open();
            SqlDataAdapter onaylanmisrandevularim = new SqlDataAdapter("SELECT * FROM tbl_doktor_hasta_bilgi ORDER BY tarih DESC", con);
            DataSet ds = new DataSet();
            onaylanmisrandevularim.Fill(ds);
            DG_DoktorHasta.DataSource = ds;
            DG_DoktorHasta.DataBind();
            if (DG_DoktorHasta.Rows.Count < 1)
            {
                lblMessage.Text = "Kayıtlı randevu yok veya doktor tarafından onaylanmamış";
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
            txtTc.Text = satir.Cells[11].Text;
            txtAd.Text = satir.Cells[2].Text;
            txtSoyad.Text = satir.Cells[3].Text;
            txtSikayet.Text = satir.Cells[4].Text;
            txtKlinik.Text = satir.Cells[5].Text;
            txtDoktor.Text = satir.Cells[6].Text;
            txtTarih.Text = satir.Cells[9].Text;
            txtSaat.Text = satir.Cells[10].Text;
            txtIlac.Text = satir.Cells[7].Text;
            txtDoktorGorusu.Text = satir.Cells[8].Text;
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
            RegularExpressionValidator5.Text = "Doktorun Görüş Bölümünü Giriniz";
            RegularExpressionValidator5.ValidationExpression = "^\\w+$";
            RegularExpressionValidator6.ControlToValidate = "txtIlac";
            RegularExpressionValidator6.Text = "İlaç bölümünü giriniz";
            RegularExpressionValidator6.ValidationExpression = "^\\w+$";

        }
        void bosKontrolleri()
        {
            RequiredFieldValidator11.ControlToValidate = "txtId";
            RequiredFieldValidator11.Text = "Kimliğinizi boş bırakmayınız";
            RequiredFieldValidator2.ControlToValidate = "txtAd";
            RequiredFieldValidator2.Text = "Kimliğinizi boş bırakmayınız";
            RequiredFieldValidator3.ControlToValidate = "txtSoyad";
            RequiredFieldValidator3.Text = "Kimliğinizi boş bırakmayınız";
            RequiredFieldValidator4.ControlToValidate = "txtSikayet";
            RequiredFieldValidator4.Text = "Kimliğinizi boş bırakmayınız";
            RequiredFieldValidator5.ControlToValidate = "txtDoktor";
            RequiredFieldValidator5.Text = "Kimliğinizi boş bırakmayınız";
            RequiredFieldValidator6.ControlToValidate = "txtKlinik";
            RequiredFieldValidator6.Text = "Kimliğinizi boş bırakmayınız";
            RequiredFieldValidator7.ControlToValidate = "txtTarih";
            RequiredFieldValidator7.Text = "Kimliğinizi boş bırakmayınız";
            RequiredFieldValidator8.ControlToValidate = "txtSaat";
            RequiredFieldValidator8.Text = "Kimliğinizi boş bırakmayınız";
            RequiredFieldValidator9.ControlToValidate = "txtIlac";
            RequiredFieldValidator9.Text = "Kimliğinizi boş bırakmayınız";
            RequiredFieldValidator10.ControlToValidate = "txtDoktorGorusu";
            RequiredFieldValidator10.Text = "Kimliğinizi boş bırakmayınız";
            RequiredFieldValidator1.ControlToValidate = "txtTc";
            RequiredFieldValidator1.Text = "Kimliğinizi boş bırakmayınız";
        }

    }
}