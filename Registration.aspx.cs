using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using shutterEyeModel1;

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
        string email = txtBoxEmail.Text;
        string gender = radioListGender.SelectedValue.ToString();
        string accTypeString = radioListTypeOfAcc.SelectedValue.ToString();
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
        string country = txtBoxCountry.Text;
        string state = txtBoxState.Text;
        string city = txtBoxCity.Text;
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
            bool emailExists = false;
            List<registration> registrationss = objj.registrations.ToList();
            var regEmails = from r in registrationss select r.emailId;
            foreach(var r in regEmails){
                if (r.Equals(email)) {
                    emailExists = true;
                    break;
                }
            }

            if (emailExists)
            {
                Response.Write("Email already Registered");
            }
            else {
                objj.regIns(fName, lName, usrName, password, email, phone, accType, country, state, city, null, gender);
                Response.Redirect("Login.aspx",false);
            }
        }
        catch (Exception x) {
            Response.Write("Error inserting Data: "+x.Message);
        }
    }
}