using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;



public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btnsignup_Click1(object sender, EventArgs e)
    {
        if (tbUname.Text != null & tbPass.Text != null && tbEmail.Text != null && tbCpass.Text != null)
        {
            if (tbPass.Text == tbCpass.Text)
            {
                String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into Users values('" + tbUname.Text + "','" + tbPass.Text + "','" + tbName.Text + "', '" + tbEmail.Text + "','U')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Signin.aspx");
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "Client Script", "alert('Password Should Match')", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "Client Script", "alert('All fields are Mandatory')", true);
        }

    }
}