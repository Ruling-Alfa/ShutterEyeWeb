<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <asp:table runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblUserName" runat="server" Text="User Name:"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtBoxUserName" runat="server"></asp:TextBox>&nbsp;&nbsp;<asp:RequiredFieldValidator
                    ID="requiredUserName" runat="server" ErrorMessage="Please Enter a User Name" Display="Dynamic" ControlToValidate="txtBoxUserName"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtBoxPassword" TextMode="Password" runat="server"></asp:TextBox>&nbsp;&nbsp;<asp:RequiredFieldValidator
                    ID="requiredPassword" runat="server" ErrorMessage="Please Enter a Password" Display="Dynamic" ControlToValidate="txtBoxPassword"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
        <asp:TableCell></asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnLogin" runat="server" Text="Login" onclick="btnLogin_Click" />&nbsp;&nbsp;
                <asp:Button ID="btnRegister" runat="server" Text="Register" onclick="btnRegister_Click" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:table>
    <br />
    </form>

</body>
</html>
