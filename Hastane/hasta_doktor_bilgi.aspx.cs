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
    public partial class hasta_doktor_bilgi : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-YIGIT; Initial Catalog=KarliovaHastanesi; Integrated Security = True");
        public void randevuListele()
        {
            con.Open();
            SqlDataAdapter randevular = new SqlDataAdapter("SELECT * FROM tbl_doktor_hasta_bilgi WHERE tc='" + Session["user"] + "'", con);
            DataSet ds = new DataSet();
            randevular.Fill(ds);
            DG_HastaDoktor.DataSource = ds;
            DG_HastaDoktor.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            randevuListele();
        }
    }
}