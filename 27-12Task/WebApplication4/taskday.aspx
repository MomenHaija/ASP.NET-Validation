<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="taskday.aspx.cs" Inherits="WebApplication4.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="Enter Your comment"></asp:Label>
<br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
<br />
<br />
                <asp:TextBox ID="tbcomment" runat="server"></asp:TextBox>
                &nbsp;<asp:Button ID="send" runat="server" OnClick="send_Click" Text="Send" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
