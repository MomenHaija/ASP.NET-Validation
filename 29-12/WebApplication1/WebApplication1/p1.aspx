<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p1.aspx.cs" Inherits="WebApplication1.p1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        UserName:<br />
        <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
        <br />
        <br />
        Password<br />
        <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:CheckBox ID="chRemember" runat="server" Text="Remember Me" />
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="LogIn" />
        <div>
        </div>
    </form>
</body>
</html>
