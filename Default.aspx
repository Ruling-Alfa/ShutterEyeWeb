<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post">    
        <asp:FileUpload ID="FileUploadControl" runat="server" />
        <asp:Button runat="server" id="UploadButton" text="Upload" onclick="UploadButton_Click" accept="image/png, image/jpeg"  />
        <br /><br />
        <asp:Label runat="server" id="StatusLabel" text="Upload status: " />
    </form>
</body>
</html>
