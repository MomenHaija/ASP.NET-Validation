<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajax.aspx.cs" Inherits="AJAX.Ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text="Please Enter your Comment "></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="tbcomment" runat="server"></asp:TextBox>
                   <asp:Button ID="Send" runat="server" OnClick="Send_Click" Text="Send" />
<br />
                </ContentTemplate>
            </asp:UpdatePanel>
 
    </form>
</body>

</html>
