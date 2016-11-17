using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using shutterEyeModel1;
using System.Data.Objects;
using System.IO;

public partial class Registration : System.Web.UI.Page
{
    shutterEyeEntities2 objj = new shutterEyeEntities2();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string fName = txtBoxFirstName.Text;
        string lName = txtBoxLastName.Text;
        string usrName = txtBoxUserName.Text;
        string password = txtBoxPassword.Text;
        string email = txtBoxEmail.Text.ToUpper();
        string gender = radioListGender.SelectedValue.ToString().ToUpper();
        string accTypeString = radioListTypeOfAcc.SelectedValue.ToString().ToUpper();
        int accType = 0;
        if (accTypeString != null)
        {
            accType = Convert.ToInt32(accTypeString);
        }
        string phoneString = txtBoxPhone .Text;
        long phone=0;
        if (phoneString != null)
        {
            phone = Convert.ToInt64(phoneString);
        }
        string country = txtBoxCountry.Text.ToUpper();
        string state = txtBoxState.Text.ToUpper();
        string city = txtBoxCity.Text.ToUpper();
        if (country.Equals("")) {
            country = null;
        }
        if (state.Equals("")) {
            state = null;
        }
        if (city.Equals("")) {
            city = null;
        }

        if (accType == 0) {
            Response.Write("Erreronious Accouynt Type");
            return;
        }

        try
        {
            objj.regIns(fName, lName, usrName, password, email, phone, accType, country, state, city, null, gender);
            dynamic id = new ObjectParameter("id", typeof(Int32));
            objj.usePass(usrName, password, id);
            var folder = Server.MapPath("uploadImages\\"+id.Value);
            if (!Directory.Exists(folder))
            {
                Directory.CreateDirectory(folder);
            }
            Response.Write("<script>alert('User successfully registered')</script>");
            Server.Transfer("Login.aspx");
        }
        catch (Exception x) {
            Response.Write("Error inserting Data: "+x.Message);
        }
    }

    protected void cusEmailExists_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        dynamic emailId = new ObjectParameter("outEmail", typeof(String));
        objj.getEmail(e.Value,emailId);
        if (emailId.Value is DBNull)
        {
            e.IsValid = true;
        }
        else {
            e.IsValid = false;
        }
                
    }
    protected void cusUserNameExists_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        dynamic usrName = new ObjectParameter("outUserName", typeof(String));
        objj.getUserName(e.Value, usrName);
        if (usrName.Value is DBNull)
        {
            e.IsValid = true;
        }
        else
        {
            e.IsValid = false;
        }

    }
}