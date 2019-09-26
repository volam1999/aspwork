<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MyFacebook.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
</head>
<body>
   <form runat="server">
   <table align="center">
       <tr>
           <td>Favour</td>
           <td><asp:DropDownList ID="menu_drop" runat="server" Width="200px" OnSelectedIndexChanged="menu_drop_SelectedIndexChanged">
               <asp:ListItem>Music</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
               </asp:DropDownList></td>
       </tr>
       <tr>
           <td>Others</td>
           <td><asp:TextBox ID="txtOther" runat="server" Width="200px"></asp:TextBox></td>
           <td><asp:CustomValidator ID="cusValidator" runat="server" ErrorMessage="*This Feild Is Required" ControlToValidate="txtOther" ForeColor="Red" OnServerValidate="cusValidator_ServerValidate"></asp:CustomValidator></td>  
       </tr>
       <tr>
           <td colspan="2" align="right"><asp:Button ID="btnSubmit" runat="server" Text="Submit" />
               <asp:Label ID="lbCheck" runat="server" Text="Label"></asp:Label>
           </td>
       </tr>
   </table>
   </form>
</body>
</html>
