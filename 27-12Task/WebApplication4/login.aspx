<%@ Page Title="" Language="C#" MasterPageFile="~/mymaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication4.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-4 p-5 shadow-sm border rounded-3">
                <h2 class="text-center mb-4 text-primary">Login Form</h2>
                <form>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="exampleInputEmail1" ErrorMessage="Please Enter The EMail" ForeColor="Red" ValidationGroup="login">*</asp:RequiredFieldValidator>
                        </label>
&nbsp;<asp:TextBox  runat="server"  class="form-control border border-primary" ID="exampleInputEmail1" ValidationGroup="login"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="exampleInputPassword1" ErrorMessage="Please Enter The pssword" ForeColor="Red" ValidationGroup="login">*</asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<asp:TextBox class="form-control border border-primary" ID="exampleInputPassword1" runat="server" TextMode="Password" ValidationGroup="login"></asp:TextBox>
                    </div>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="login" />
                    <p>
                    </p>
                    <div class="d-grid">
                        <asp:Button ID="Button1"  class="btn btn-primary"  runat="server" Text="Login" ValidationGroup="login" />
                    </div>
                </form>
                <div class="mt-3">
                    <p class="mb-0  text-center">Don't have an account? 
                        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" PostBackUrl="~/register.aspx">SignUp</asp:LinkButton>
                    </p>
                </div>
            </div>
        </div>
</asp:Content>
