<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAddEdit.aspx.cs" Inherits="SharepointWebsite.ViewAddEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 69px;
        }
        .auto-style4 {
            height: 69px;
            width: 365px;
        }
        .auto-style5 {
            width: 365px;
        }
        .auto-style7 {
            height: 134px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
        <link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
        <script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>

        <script type="text/javascript">  
            $(function () {
                $('[id*=FieldListBox]').multiselect({
                    includeSelectAllOption: true
                });
            });
        </script>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="ViewName" CssClass="label label-default label-lg" Style="font-size: initial;" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <div class="col-md-6">
                        <asp:TextBox ID="ViewTextBox" CssClass="form-control" runat="server" placeholder="Enter View Name" required="required"></asp:TextBox>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Fields" CssClass="label label-default label-lg" runat="server" Style="font-size: initial;" Text="Fields"></asp:Label>
                </td>
                <td class="auto-style7">
                    <div style="margin-left: 1.5%;">
                        <asp:ListBox ID="FieldListBox" Style="margin-left: 1.5%;" runat="server" SelectionMode="Multiple" required="required"></asp:ListBox>
                    </div>
                </td>
            </tr>

            <tr>
                <td class="auto-style5">
                    
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="CancelButton" CssClass="btn btn-primary" runat="server" Font-Bold="True" Text="Cancel" />
                    <asp:Button type="submit" ID="SubmitButton" style="margin-left: 3%;" CssClass="btn btn-success" runat="server" Font-Bold="True" OnClick="SubmitButton_Click" Text="Submit" ToolTip="click to add view" /><asp:Label ID="Validator" Style="font-size: initial;" runat="server" ></asp:Label>
                    <%--<input type="submit" id="SubmitButton" style="margin-left: 3%;" class="btn btn-success" text="Submit"/>--%>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>