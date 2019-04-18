using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirajPatel_FinalProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                lblwelcome.Text = "Welcome  " + Session["user"].ToString();
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("StartUp");
        }
    }
}