using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
namespace IleriNet_Final2
{
    public partial class doktor_randevularim : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-YIGIT; Initial Catalog=KarliovaHastanesi; Integrated Security = True");
        public void randevuListele()
        {
            con.Open();
            SqlDataAdapter randevular = new SqlDataAdapter("SELECT * FROM tbl_hasta_randevu WHERE doktor='" + Session["doktor_klinik"] + "' AND onay='False' ORDER BY tarih DESC", con);
            DataSet ds = new DataSet();
            randevular.Fill(ds);
            DG_randevular.DataSource = ds;
            DG_randevular.DataBind();
            con.Close();
            if (DG_randevular.Rows.Count < 1)
            {
                Label2.Text = "Randevunuz bulunmamaktadır.";
            }
        }
        public void onayliRandevuListele()
        {
            con.Open();
            SqlDataAdapter onaylanmisrandevularim = new SqlDataAdapter("SELECT * FROM tbl_hasta_randevu WHERE doktor='" + Session["doktor_klinik"] + "' AND onay='True' ORDER BY tarih DESC", con);
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
        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            //HASTA BURADA TAKVİM VE SAATİ GÜNCELLEYEBİLİR DİĞER BİLGİLERİNİ GÜNCELLEMEK İSTERSE PROFİLİM SAYFASINA GİTMELİDİR
            con.Open();
            if (txtId.Text != "")
            {
                bool onay = true; // doktor yeni tarihi kendisi girdiği zaman onay otomatik true olacak
                SqlCommand guncelle = new SqlCommand("UPDATE tbl_hasta_randevu SET tarih='" + txtTarih.Text + "', saat='" + DDL_Saat.Text + "', onay='" + onay + "' WHERE id = '" + txtId.Text + "' ", con);
                guncelle.ExecuteNonQuery();
                lblMessage.Text = "Kayıt başarıyla Güncellendi";
            }
            else
            {
                lblMessage.Text = "Lütfen Güncelleyeceğiniz hastanın ID numarasını giriniz";
            }
            con.Close();
            onayliRandevuListele();
            randevuListele();
            mailGonder();
        }
        string hasta_mail;
        protected void DG_onaylanmisRandevular_SelectedIndexChanged(object sender, EventArgs e)
        {
            int satirIndex = DG_onaylanmisRandevular.SelectedIndex;
            GridViewRow satir = DG_onaylanmisRandevular.Rows[satirIndex];
            txtId.Text = satir.Cells[2].Text;
            txtTarih.Text = satir.Cells[13].Text;
            DDL_Saat.Text = satir.Cells[14].Text;
            lblHastaMail.Text = satir.Cells[11].Text;
        }

        protected void DG_randevular_SelectedIndexChanged(object sender, EventArgs e)
        {
            int satirIndex = DG_randevular.SelectedIndex;
            GridViewRow satir = DG_randevular.Rows[satirIndex];
            txtId.Text = satir.Cells[2].Text;
            txtTarih.Text = satir.Cells[13].Text;
            DDL_Saat.Text = satir.Cells[14].Text;
            lblHastaMail.Text = satir.Cells[11].Text;
        }

        public void mailGonder()
        {
            MailMessage eposta = new MailMessage();
            eposta.From = new MailAddress("karliovahastanesi@hotmail.com");
            eposta.To.Add(lblHastaMail.Text);
            eposta.Subject = "Randevu | Karlıova Hastanesi";
            eposta.Body = "Randevu Saatiniz Güncellendi Tarih: " + txtTarih.Text + " Saat: " + DDL_Saat.Text + " Lütfen sistemden kontrol ediniz";
            SmtpClient smtp = new SmtpClient();
            smtp.Credentials = new System.Net.NetworkCredential("karliovahastanesi@hotmail.com", "11223344Yy");
            smtp.Port = 587;
            smtp.Host = "smtp.live.com";
            smtp.EnableSsl = true;
            smtp.Send(eposta);
            lblMessage.Text = "Randevu başarıyla güncellendi ve Hastaya Mail üzerinden bilgilendirme yapıldı";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            bosKontrolleri();
            DG_randevular.ShowFooter = true;
            DG_onaylanmisRandevular.ShowFooter = true;
            DG_randevular.ShowHeaderWhenEmpty = true;
            DG_onaylanmisRandevular.ShowHeaderWhenEmpty = true;
            if (!Page.IsPostBack)
            {
                onayliRandevuListele();
                randevuListele();
            }
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
        bool randevu_onayi;
        protected void DG_onaylanmisRandevular_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Onayi_Kaldir")
            {
                randevu_onayi = false;
                con.Open();
                SqlCommand guncelle = new SqlCommand("UPDATE tbl_hasta_randevu SET onay='" + randevu_onayi + "' WHERE id='"+ txtId.Text +"'", con); //WHERE kısmı seçilen satırın verileri textbox a aktarılıyor
                guncelle.ExecuteNonQuery();
                con.Close();
                randevuListele();
                onayliRandevuListele();
                lblMessage.Text = "Hasta randevusu başarıyla iptal edildi";
                mailGonder();

            }
        }

        protected void DG_randevular_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Onayla")
            {
                randevu_onayi = true;
                con.Open();
                //WHERE kısmı seçilen satırın verileri textbox a aktarılıyor
                SqlCommand guncelle = new SqlCommand("UPDATE tbl_hasta_randevu SET onay='" + randevu_onayi + "' WHERE id='"+ txtId.Text +"'", con);
                guncelle.ExecuteNonQuery();
                con.Close();
                randevuListele();
                onayliRandevuListele();
                lblMessage.Text = "Hasta randevusu başarıyla onaylandı";
                mailGonder();
            }
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            /* butonun OnClientClick'inde "return randevulariYazdir();" 
             * fonksiyonu alternatif birçok yol denedim bunu uygun gördüm
            < script >
                function randevulariYazdir() {
                        var panel = document.getElementById("<%= Panel1.ClientID %>");
                        var MainWindow = window.open('', '', 'height=600,width=800');
                        MainWindow.document.write("<html><head><title>Randevularımı Yazdır</title>");
                        MainWindow.document.write("</head><body>");
                        MainWindow.document.write(panel.innerHTML);
                        MainWindow.document.write("</body></html>");
                        MainWindow.document.close();
                        setTimeout(function(){
                            MainWindow.print();
                        }, 500);
                        return false;
                    }
            </ script >
            */
        }
    }
}