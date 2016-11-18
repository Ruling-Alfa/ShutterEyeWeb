<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page2.aspx.cs" Inherits="page2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post">
    <div>
        <asp:Button ID="applyRustyFilterBtn" runat="server" Text="Apply Rusty Filter" 
            onclick="applyRustyFilterBtn_Click" />
        <asp:Button ID="applyTextileFilterBtn" runat="server" 
            Text="Apply Textile Filter" onclick="applyTextileFilterBtn_Click" />
        <asp:Button ID="applyWoodFilterBtn" runat="server" Text="Apply Wood Filter" 
            onclick="applyWoodFilterBtn_Click" />
        <asp:Button ID="applyMarbleFilterBtn" runat="server" Text="Apply Marble Filter" 
            onclick="applyMarbleFilterBtn_Click" />
            
            <br />
            <br />
        <asp:Image ID="imageFilteredImg" runat="server" />
    </div>
    </form>
</body>
</html>
