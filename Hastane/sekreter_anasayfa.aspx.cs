using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IleriNet_Final2
{
    public partial class sekreter_anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Hoşgeldiniz " + Session["welcome"].ToString();
        }
    }
}