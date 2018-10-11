<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SharepointWebsite.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>

<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="LoginPage.aspx.cs" Inherits="SharepointWebsite.LoginPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--   <div class="auto-style4" id="login">
        <div>
        </div>
            <asp:Label ID="SiteNameLabel" runat="server" Text="SiteName"></asp:Label>
            <asp:TextBox ID="SiteNameTextBox" runat="server" CssClass="auto-style1" Height="31px" Width="132px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="UserNameLabel" runat="server" Text="UserName"></asp:Label>
            <asp:TextBox ID="UserNameTextBox" runat="server" CssClass="auto-style2" Height="28px" Width="136px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="PasswordLabel" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="PasswordTextBox"  textmode="Password"    runat="server" CssClass="auto-style3" Height="29px" Width="132px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="LoginButton" runat="server" OnClick="Button1_Click" Text="Login" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>--%>
    <div id="login" class="col-md-12">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-12">
                    <div id="login-box" class="col-md-12" style="height: 100%; margin-left: 23%;">
                        <form id="login-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <asp:Label ID="SiteNameLabel" runat="server" CssClass="text-info" Text="SiteName"></asp:Label>
                                <asp:TextBox ID="SiteNameTextBox" runat="server" CssClass="auto-style1 form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="UserNameLabel" runat="server" Text="UserName" CssClass="text-info"></asp:Label>
                                <asp:TextBox ID="UserNameTextBox" runat="server" CssClass="auto-style1 form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="PasswordLabel" runat="server" Text="Password" CssClass="text-info"></asp:Label>
                                <asp:TextBox ID="PasswordTextBox" TextMode="Password" runat="server" CssClass="auto-style1 form-control" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info">
                                    <span>Remember me</span> <span>
                                        <input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <%--<input type="submit" name="submit" class="btn btn-info btn-md" value="submit">--%>
                                 <asp:Button ID="LoginButton" class="btn btn-info btn-md" runat="server" type="submit" OnClick="Button1_Click" Text="Login" />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
