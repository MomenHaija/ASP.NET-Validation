<%@ Page Title="" Language="C#" MasterPageFile="~/mymaster.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication4.Task" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                <form class="mx-1 mx-md-4">

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <asp:TextBox  runat="server"  ID="form3Example1c" class="form-control" ValidationGroup="register"></asp:TextBox>

                      <label class="form-label" for="form3Example1c">Your Name</label>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="form3Example1c" ErrorMessage="Must enter the name" ForeColor="Red" ValidationGroup="register">*</asp:RequiredFieldValidator>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <asp:TextBox ID="form3Example3c" class="form-control"  runat="server" ValidationGroup="register"></asp:TextBox>
                      <label class="form-label" for="form3Example3c">Your Email</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="form3Example3c" ErrorMessage="The Email is Required" ForeColor="Red" ValidationGroup="register">*</asp:RequiredFieldValidator>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <asp:TextBox  runat="server" id="form3Example4c" class="form-control" ValidationGroup="register" TextMode="Password"></asp:TextBox>
                      <label class="form-label" for="form3Example4c">Password</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="form3Example4c" ErrorMessage="must create the password" ForeColor="Red" ValidationGroup="register">*</asp:RequiredFieldValidator>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <asp:TextBox  runat="server" ID="form3Example4cd" class="form-control" ValidationGroup="register" TextMode="Password"></asp:TextBox>
                      <label class="form-label" for="form3Example4cd">Repeat your password</label>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="form3Example4cd" ErrorMessage="must confirm the password" ForeColor="Red" ValidationGroup="register">*</asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="form3Example4c" ControlToValidate="form3Example4cd" ErrorMessage="The password not matching" ForeColor="Red" ValidationGroup="register">*</asp:CompareValidator>
                        <br />
                        already have an account?<asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Blue" PostBackUrl="~/login.aspx">Login</asp:LinkButton>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="register" />
                    </div>
                  </div>

             

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-primary btn-lg" ValidationGroup="register" OnClick="Button1_Click"/>
                  &nbsp;&nbsp;
                  </div>

               

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
   <%--   <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-4 p-5 shadow-sm border rounded-3">
                <h2 class="text-center mb-4 text-primary">Login Form</h2>
               
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="exampleInputEmail1" ErrorMessage="Please Enter The EMail" ForeColor="Red" ValidationGroup="login">*</asp:RequiredFieldValidator>
                        </label>
&nbsp;<asp:TextBox  runat="server"  class="form-control border border-primary" ID="exampleInputEmail1" ValidationGroup="login"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="exampleInputPassword1" ErrorMessage="Please Enter The pssword" ForeColor="Red" ValidationGroup="login">*</asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<asp:TextBox class="form-control border border-primary" ID="exampleInputPassword1" runat="server" TextMode="Password" ValidationGroup="login"></asp:TextBox>
                    </div>
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ValidationGroup="login" />
                    <p>
                    </p>
                    <div class="d-grid">
                        <asp:Button ID="Button2"  class="btn btn-primary"  runat="server" Text="Login" ValidationGroup="login" OnClick="Button2_Click" />
                    </div>
               
                <div class="mt-3">
                    <p class="mb-0  text-center">Don't have an account? 
                        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Blue" PostBackUrl="~/register.aspx">SignUp</asp:LinkButton>
                    </p>
                </div>
            </div>
        </div>--%>
</asp:Content>
