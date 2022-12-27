<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"/>  

        <p>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" Operator="Equal" ErrorMessage="Enter a valid value" ForeColor="Red"></asp:CompareValidator>
        </p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        
        
        <br />
        <br />
        <br />
         <asp:RegularExpressionValidator id="RegularExpressionValidator1" 
                     ControlToValidate="TextBox2"
                     ValidationExpression="\d{3}"
                     Display="Static"
                     ErrorMessage="ZIP code must be 3 numeric digits"
                     SetFocusOnError="True"
                     runat="server"/>

       <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1"   
       ErrorMessage="Enter value in specified range" ForeColor="Red" MaximumValue="100" MinimumValue="0"   
       SetFocusOnError="True" ></asp:RangeValidator>
       <asp:RequiredFieldValidator ID="pass" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter value in Text Box 2"   
       ForeColor="Red"></asp:RequiredFieldValidator>  
        <br />
         <asp:Button ID="Button1" runat="server" Text="Button" onclientclick="Navigate()"/>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
   
    <script>
        function Navigate() {
            if (TextBox1.Text == TextBox2.Text) {
                Label1.Text = "True";
            }
            else {
                Label1.Text = "False";
            }
        }    
    </script>
</body>
</html>
