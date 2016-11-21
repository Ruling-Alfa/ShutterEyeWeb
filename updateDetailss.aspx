<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateDetailss.aspx.cs" Inherits="updateDetailss" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  
                             <asp:TextBox ID="txtBoxEmail"   runat="server" placeholder="Email"></asp:TextBox>

                             <br />

                             <asp:TextBox ID="txtBoxConfirmEmail"  runat="server" placeholder="Confirm Email"></asp:TextBox>
                             <asp:CompareValidator ID="compareEmail" runat="server" ValueToCompare="txtBoxEmail" ControlToValidate="txtBoxConfirmEmail"  ErrorMessage="Please Enter Same Email" Display="Dynamic"></asp:CompareValidator>

                             <br />

                             <asp:TextBox ID="txtBoxPhone" class="form-control"  runat="server" placeholder="Phone"></asp:TextBox>
                             
                             <br />
                             
                        <asp:Label ID="Label1"  Text="Account-Type"  runat="server"/>
        <br />
                        <asp:RadioButtonList ID="radioListTypeOfAcc" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="accName" DataValueField="acId">
                            </asp:RadioButtonList>

                            
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:shutterEyeConnectionString2 %>" 
                                 SelectCommand="SELECT [acId], [accName] FROM [accType]"></asp:SqlDataSource>

                    <br />
                    <div class="form-group">
                        <asp:Label ID="Label2" Text="Gender" runat="server" />
                            


                            <asp:RadioButtonList ID="radioListGender" runat="server">
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                            </asp:RadioButtonList>
  
                        
                             <asp:TextBox ID="txtBoxCountry" class="form-control"  runat="server" placeholder="Country"></asp:TextBox>

                             <br />

                             <asp:TextBox ID="txtBoxState" class="form-control"  runat="server" placeholder="State"></asp:TextBox>

                             <br />

                             <asp:TextBox ID="txtBoxCity" class="form-control"  runat="server" placeholder="City"></asp:TextBox>
                            <br />
                        <asp:Button ID="btnUpdate" runat="server" text="Update Details"  Font-Bold="true"  onclick="btnUpdate_Click"/>

    </form>
</body>
</html>
