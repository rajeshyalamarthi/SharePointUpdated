<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPage.aspx.cs" Inherits="SharepointWebsite.EditPage" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title></title>

    <style type="text/css">

        .auto-style1 {

            width: 100%;

            border: 5px solid #000000;

            background-color: #C0C0C0;

        }

        .auto-style3 {

            width: 254px;

            height: 43px;

        }

        .auto-style4 {

            height: 43px;

        }

        .auto-style5 {

            width: 254px;

            height: 46px;

        }

        .auto-style6 {

            height: 46px;

        }

        .auto-style7 {

            width: 254px;

            height: 49px;

        }

        .auto-style8 {

            height: 49px;

        }

        .auto-style9 {

            width: 254px;

            height: 54px;

        }

        .auto-style10 {

            height: 54px;

        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div>

            <table class="auto-style1">

                <tr>

                    <td class="auto-style3">

        <asp:Label ID="EditField" runat="server" Text="Edit Field"></asp:Label>

                    </td>

                    <td class="auto-style4"></td>

                </tr>

                <tr>

                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label>

                    </td>

                    <td class="auto-style6">

        <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>

                    </td>

                </tr>

                <tr>

                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="TypeLabel" runat="server" Text="Type"></asp:Label>





                    </td>

                    <td class="auto-style8">

       

        <asp:DropDownList ID="TypeDropDownList" runat="server">



            <asp:ListItem>Text</asp:ListItem>

<%--	  <asp:ListItem>Multiple lines of text</asp:ListItem>--%>

	  <asp:ListItem>Choice</asp:ListItem>

	  <asp:ListItem>Number</asp:ListItem>

    	<asp:ListItem>Currency</asp:ListItem>

      <asp:ListItem>DateTime</asp:ListItem>



        </asp:DropDownList>



       





        

                    </td>

                </tr>

                <tr>

                    <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="DescriptionLabel" runat="server" Text="Description"></asp:Label>

                    </td>

                    <td class="auto-style10">

        <asp:TextBox ID="DescriptionTextBox" runat="server"></asp:TextBox>

                    </td>

                </tr>

                <tr>

                    <td class="auto-style5">

        <asp:Button ID="EditButton" runat="server" Text="Edit" OnClick="EditButton_Click" Width="66px" />



                    </td>

                    <td class="auto-style6"></td>

                </tr>

            </table>

            <%--  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>

        </div>

        <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <br />

        <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <br />

        <br />

&nbsp;<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        



&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



       





        

        <%--<asp:TextBox ID="TypeTextBox" runat="server"></asp:TextBox>--%>

        <br />

        <br />

        <br />

        <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <br />

        <br />



&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        

    </form>

</body>

</html>
