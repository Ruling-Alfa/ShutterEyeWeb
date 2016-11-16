<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:table runat="server" ID="table1">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblEmail" runat="server" Text="Registered Email Id:"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtBoxEmailId"  runat="server"></asp:TextBox>&nbsp;&nbsp;<asp:RequiredFieldValidator
                    ID="requiredEmail" runat="server" ErrorMessage="Please Valid Email Please" Display="Dynamic" ControlToValidate="txtBoxEmailId"></asp:RequiredFieldValidator>
                
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
        <asp:TableCell></asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnSendMail" runat="server" Text="Send Verification Email" onclick="btnSendMail_Click" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:table>
    
    </div>&nbsp;&nbsp;
    </form>
</body>
</html>
