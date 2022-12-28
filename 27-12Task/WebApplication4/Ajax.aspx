<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajax.aspx.cs" Inherits="WebApplication4.Ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text="Enter Your Name"></asp:Label>
                    &nbsp;<asp:TextBox ID="tbname" runat="server"></asp:TextBox>
                    <asp:Button ID="btnOk" runat="server" OnClick="btnOk_Click" Text="Ok" />
                    <br />
                    <br />
                    <asp:Label ID="lbname" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lbtimer" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Timer  ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <br />
                    <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                        <ProgressTemplate>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Please Wait...."></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <br />
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="num1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="num2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                        <ProgressTemplate>
                            <br />
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
