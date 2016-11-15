using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Objects;
using shutterEyeModel;

public partial class Login : System.Web.UI.Page
{
    shutterEyeEntities objj = new shutterEyeEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!(Session["Id"] == null || Session["Id"].ToString().Equals(String.Empty)) || !(Session["UserName"] == null || Session["UserName"].ToString().Equals(String.Empty)))
            {
                //check if user id exists
                dynamic id = new ObjectParameter("id", typeof(Int32));
                objj.usePassSp(Session["UserName"].ToString(), Session["Password"].ToString(), id);
                if (!(id.Value is DBNull))
                {
                    if (Convert.ToInt32(id.Value) == Convert.ToInt32(Session["Id"]))
                    {
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        Session["Id"] = null;
                        Session["UserName"] = null;
                        Session["passowrd"] = null;
                        Response.Write("Illegal user");
                        //throw new Exception("Illegal user");
                    }
                }
                else
                {
                    Session["Id"] = null;
                    Session["UserName"] = null;
                    Session["passowrd"] = null;
                    Response.Write("Illegal user");
                }

            }
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        var id = new ObjectParameter("id", typeof(Int32));

        objj.usePassSp(txtBoxUserName.Text, txtBoxPassword.Text, id);

        if (!(id.Value is DBNull))
        {

            Session["UserName"] = txtBoxUserName.Text;
            Session["Password"] = txtBoxPassword.Text;
            Session["Id"] = id.Value;
            Response.Redirect("Home.aspx");
        }
        Response.Write("Error");
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {

    }
}