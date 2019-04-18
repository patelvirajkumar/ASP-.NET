using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirajPatel_FinalProject
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
      
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {



            string username;
            string password;
            username = admintxt.Text;
            password = passadmintxt.Text;
            if (username == "Admin")
            {
                if (password == "123")
                {
                    Response.Redirect("AdminPage");
                }
            }
            else
            {
                errlbl.Text = ("Invalid user name or password.Please retype.");
            }

        }
    }
}