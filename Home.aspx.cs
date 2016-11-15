using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if ((Session["Id"] == null || Session["Id"].ToString().Equals(String.Empty)) || (Session["UserName"] == null || Session["UserName"].ToString().Equals(String.Empty)))
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session["Id"] = null;
        Session["UserName"] = null;
        Session["passowrd"] = null;
        Response.Redirect("Login.aspx");
    }
}