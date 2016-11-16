<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        Password<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Gender"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem Value="M">Male</asp:ListItem>
            <asp:ListItem Value="F">Female</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Confirm Email"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Account Type"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            DataSourceID="accoutnType_Reg" DataTextField="acType" DataValueField="acId">
        </asp:RadioButtonList>
        <asp:SqlDataSource ID="accoutnType_Reg" runat="server" 
            ConnectionString="<%$ ConnectionStrings:shutterEyeConnectionString %>" 
            SelectCommand="SELECT [acId], [acType] FROM [accType]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Country"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Text="State"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" Text="City"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <br />
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
