<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="start" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Start read from cookies" />
            <br />
            <br />
            <asp:Label ID="lbname" runat="server" Text="Please Enter Your name"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="OK" runat="server" OnClick="OK_Click" Text="OK" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Show your name" />
            <br />
            <asp:Label ID="lbshowname" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Please Enter Your information"></asp:Label>
            <br />
            <br />
            <asp:Label runat="server" Text="Name"></asp:Label>
            :&nbsp;&nbsp;
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
            :
            <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Setdata" runat="server" OnClick="Button4_Click" Text="Set Data" />
&nbsp;<asp:Button ID="printdata" runat="server" OnClick="printdata_Click" Text="Print Data" />
            <br />
            <br />
            <asp:HiddenField ID="hdname" runat="server" />
            <br />
            <asp:HiddenField ID="hdaddress" runat="server" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Please Enter Your information"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label>
&nbsp;<asp:TextBox ID="txtname2" runat="server" OnTextChanged="txtname2_TextChanged"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Age:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnsend" runat="server" style="height: 29px" Text="Send" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
