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
    public partial class sekreter_randevular : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-YIGIT; Initial Catalog=KarliovaHastanesi; Integrated Security = True");
        SqlDataReader dr;
        void doktorDoldur()
        {
            /************KLİNİK TABLOSUNDAKİ VERİLERE GÖRE DROPDOWNLİST NESNESİNİ DOLDURUYORUM*****************/
            con.Open();
            SqlDataAdapter klinik = new SqlDataAdapter("SELECT ad FROM tbl_doktor_kayit", con);
            DataSet ds = new DataSet();
            klinik.Fill(ds);
            DDL_Doktor.DataSource = ds;
            DDL_Doktor.DataTextField = "ad";
            DDL_Doktor.DataBind();
            con.Close();
        }
        public void randevuListele()
        {
            con.Open();
            SqlDataAdapter randevular = new SqlDataAdapter("SELECT * FROM tbl_hasta_randevu WHERE doktor='"+ DDL_Doktor.SelectedItem.Value+"'", con);
            DataSet ds = new DataSet();
            randevular.Fill(ds);
            DG_randevular.DataSource = ds;
            DG_randevular.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DDL_Doktor.AutoPostBack = true;
            if (!Page.IsPostBack)
            {
                doktorDoldur();
                DDL_Doktor.Items.Insert(0, "Tümü");
            }
        }

        protected void DDL_Doktor_SelectedIndexChanged(object sender, EventArgs e)
        {
            randevuListele();
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