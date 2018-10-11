<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddField.aspx.cs" Inherits="SharepointWebsite.AddField" %>

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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddField.aspx.cs" Inherits="SharepointWebsite.AddField" %>



<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title></title><style type="text/css">

        .auto-style2 {

            width: 100%;

            border: 5px solid #000000;

            background-color: #C0C0C0;

        }

        .auto-style3 {

            height: 69px;

        }

        .auto-style4 {

            height: 78px;

        }

        .auto-style5 {

            height: 96px;

        }

        .auto-style6 {

            height: 69px;

            width: 366px;

        }

        .auto-style7 {

            height: 78px;

            width: 366px;

        }

        .auto-style8 {

            height: 96px;

            width: 366px;

        }

    </style>

</head>

<body>

  <form id="form1" runat="server">

        <div>





            <table class="auto-style2">

                <tr>

                    <td class="auto-style6" style="color:brown;font-size:x-large">ADD FIELD</td>

                    <td class="auto-style3"></td>

                </tr>

                <tr>

                    <td class="auto-style7" style="color:darkblue;font-size:larger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FIELD NAME</td>

                    <td class="auto-style4" style="color:tomato;font-size:larger">

                        <asp:TextBox ID="FieldName" runat="server" Height="31px" Width="188px"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FieldName" ErrorMessage="Can Not Be Empty"></asp:RequiredFieldValidator>

                    </td>

                </tr>

                <tr>   

                    <td class="auto-style7" style="color:darkblue;font-size:larger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FIELD TYPE</td>

                    <td class="auto-style4" style="color:tomato;font-size:larger">

                        <asp:DropDownList ID="FieldType" Font-Size="Large" runat="server" Height="30px" >

                            <asp:ListItem >Text</asp:ListItem>

                            <asp:ListItem>Number</asp:ListItem>

                            <asp:ListItem>DateTime</asp:ListItem>

                            <asp:ListItem>Choice</asp:ListItem>

                            <asp:ListItem>Currency</asp:ListItem>

                        </asp:DropDownList>

                      

                       

                    </td>

                </tr>

                   <tr>

                    <td class="auto-style7" style="color:darkblue;font-size:larger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Description</td>

                    <td class="auto-style4" style="color:tomato;font-size:larger">

                        <asp:TextBox ID="Description" runat="server" Height="31px" Width="188px"></asp:TextBox>

                      

                    </td>

                </tr>

                <tr>

                    <td class="auto-style8" style="border-color:cadetblue;font-size:larger">

                        <asp:Button ID="Button1" runat="server" Text="ADD" Height="33px" Width="63px" OnClick="Button1_Click"/></td>

                    <td class="auto-style5" style="font-size:large;color:green"><asp:Label ID="Label1" runat="server" ></asp:Label>

                        <asp:Label ID="Label2" runat="server" ForeColor="#ff0000"></asp:Label>

                    </td>

                </tr>

            </table>

        </div>

    </form>

</body>

</html>
