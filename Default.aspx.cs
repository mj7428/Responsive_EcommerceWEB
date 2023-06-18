using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            btnSignout.Visible = true;
            
            
        }
        else
        {
            btnSignout.Visible = false;
            
        }
        BindCartNumber();
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

    protected void btnSignout_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}