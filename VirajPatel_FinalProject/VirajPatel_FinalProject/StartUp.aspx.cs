using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirajPatel_FinalProject
{
    public partial class StartUp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["user"] != null)
            {
                Response.Redirect("StartUp");
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string check = "select count(*) from [Table] where Email_Id= '" + usertxt.Text + "'and Password =  '" + passtxt.Text + "' ";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                //we will create a session here to store a value.
                Session["user"] = usertxt.Text;

                Response.Redirect("Home");


            }

            else
            {
                errorlbl.Text = ("Invalid email or password.Please retype.");
            }
        }
    }
}