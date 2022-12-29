<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task2.aspx.cs" Inherits="WebApplication1.Task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="RED">RED</asp:ListItem>
                <asp:ListItem>Blue</asp:ListItem>
                <asp:ListItem Value="Green">Green</asp:ListItem>
                <asp:ListItem>Yellow</asp:ListItem>
                <asp:ListItem>Black</asp:ListItem>
            </asp:DropDownList>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
