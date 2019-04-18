using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirajPatel_FinalProject
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnShopping_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Default");
        }

        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            msgtxt.Text = "Function still not specified";
        }

        protected void btnRmv_Click(object sender, EventArgs e)
        {
            msgtxt.Text = "Function still not specified";
        }

       
    }
}