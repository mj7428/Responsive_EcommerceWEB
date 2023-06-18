using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            BtnSignOut.Visible = true;
            btnSignIn.Visible = false;
        }
        else
        {
            BtnSignOut.Visible = false;
            btnSignIn.Visible = true;
        }
    }

    protected void BtnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }


    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Signin.aspx");
    }
    public void BindCartNumber()
    {

        if (Request.Cookies["CartPID"] != null)
        {
            string CookiesPID = Request.Cookies["CartPID"].Value.Split('=')[1];
            String[] ProductArray = CookiesPID.Split(',');
            int ProductCount = ProductArray.Length;
            pCount.InnerText = ProductCount.ToString();
        }
        else
        {
            pCount.InnerText = 0.ToString();
        }


    }
    protected void btnCart_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Cart.aspx");
    }
}
