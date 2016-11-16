using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Objects;
using shutterEyeModel;
using System.Net.Mail;
using System.Text;

public partial class ForgotPassword : System.Web.UI.Page
{
    shutterEyeEntities objj = new shutterEyeEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSendMail_Click(object sender, EventArgs e)
    {
        String email = txtBoxEmailId.Text;
        //var regs = objj.registrations.Where( s => s.emailId.Equals(email));
        List<registration> allRegs = objj.registrations.ToList();
        var regs = (from r in allRegs where r.emailId == email select r );

        if (regs.Count() == 1)
        {
            registration r = regs.ElementAt(0);
            //send mail
            SendEmail(r.emailId,r.uId);
            Response.Write("Email Sent");

        }
        else
        {
            
            Response.Write("Email Id Invalid");
        }
    }

    public bool IsValidEmail(string emailaddress)
    {
        try
        {
            MailAddress m = new MailAddress(emailaddress);

            return true;
        }
        catch (FormatException)
        {
            return false;
        }
    }

    private void SendEmail(string mailTo, int uId)
    {
        try
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("Hi,<br/> Click on below given link to Reset Your Password<br/>");
            sb.Append("<a href=http://localhost:57355/codesoluation/resetlink.aspx?resetId=" + GetResetID(mailTo, uId));
            sb.Append("&email=" + mailTo + ">Click here to change your password</a><br/>");
            sb.Append("<p>Please Don't Forward this mail to anyone Else</p>");
            sb.Append("thanks");

            MailMessage message = new System.Net.Mail.MailMessage("neel.acharya@gmail.com", mailTo, "Your Password Reset Link", sb.ToString());

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com";

            smtp.Port = 587;

            smtp.Credentials = new System.Net.NetworkCredential("neel.achary@gmail.com", "myPassword");

            smtp.EnableSsl = true;

            message.IsBodyHtml = true;

            smtp.Send(message);
        }

        catch 
        {
            
        }
    }

    private string GetResetID(string Email, int uId)
    {
        List<verifyUser> users = objj.verifyUsers.ToList();
        int validateId = (from u in users  where u.uId == uId   select u).ElementAt(0).vId;
        return validateId.ToString();
    }
}