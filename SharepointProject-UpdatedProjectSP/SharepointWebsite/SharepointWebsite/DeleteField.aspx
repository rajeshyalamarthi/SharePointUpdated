<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteField.aspx.cs" Inherits="SharepointWebsite.DeleteField" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title></title>

    <style type="text/css">

        .auto-style1 {

            width: 100%;

            border: 4px solid #000000;

            background-color: #C0C0C0;

        }

        .auto-style2 {

            width: 583px;

            height: 72px;

        }

        .auto-style7 {

            height: 72px;

        }

        .auto-style8 {

            width: 583px;

            height: 31px;

        }

        .auto-style9 {

            height: 31px;

        }

        .auto-style10 {

            width: 583px;

            height: 78px;

        }

        .auto-style11 {

            height: 78px;

        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div>

            <br />

            <br />

        </div>

        <table class="auto-style1">

            <tr>

                <td class="auto-style8"></td>

                <td class="auto-style9"></td>

            </tr>

            <tr>

                <td class="auto-style2">

            <asp:Label ID="NameLabel" runat="server" ForeColor="#cc0000" Font-Size="Larger" Text="Do you want to Delete"></asp:Label>

                </td>

                <td class="auto-style7"></td>

            </tr>

            <tr>

                <td class="auto-style10">

        <asp:Button ID="DeleteButton" runat="server" OnClick="DeleteButton_Click" Text="Delete" />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="CancelButton" runat="server" OnClick="CancelButton_Click" Text="Cancel" />

                </td>

                <td class="auto-style11">
                     <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="#cc0000"></asp:Label>
               
                     <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="#cc0000"></asp:Label>
                </td>

            </tr>

        </table>

    </form>

</body>

</html>
