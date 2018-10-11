<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SiteContents.aspx.cs" Inherits="SharepointWebsite.SiteContents" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 531px">
        <br />
        <asp:TreeView ID="TreeView1" runat="server" PopulateNodesFromClient="False">
        </asp:TreeView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <br />
        <br />
        <br />
        <br />

        <div class="container">
            <h2><asp:Label ID="sitetitle" runat="server" ForeColor="#990000" Font-Size="Larger"></asp:Label></h2>

           <%-- <p style="color:brown;font-size:large "> </p>--%>

            <div class="panel-group">
                <% for (int listcount = 0; listcount < contents.Count; listcount++)
                    {
                        // ListData listData = new ListData();
                        fields = listData.GetFields(contents[listcount]);
                        views = listData.GetViews(contents[listcount]);

                %>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" href="#collapsee<%= listcount%>"><%= contents[listcount] %></a>
                        </h4>
                    </div>

                    <div id="collapsee<%= listcount%>" class="panel-collapse collapse">

                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" href="#collapseer<%= listcount%>">Fields</a> <a href="AddField.aspx/?ListName=<%=contents[listcount] %>" style="margin-left: 10%;" class="btn btn-primary btn-sm" role="button">Add Field</a>
                                    </h4>
                                </div>
                                <div id="collapseer<%= listcount%>" class="panel-collapse collapse">
                                    <% for (int fieldcount = 0; fieldcount < fields.Count; fieldcount++)
                                        {     %>
                                    <div class="panel-body"><a data-toggle="collapse" href="#collapse2"><%= fields[fieldcount] %></a>  </div> <div class="panel-body"> <a href="EditPage.aspx/?ListName=<%=contents[listcount] %>&&FieldName=<%=fields[fieldcount] %>" style="margin-left: 10%;" class="btn btn-info btn-sm" role="button">Edit Field</a> <a href="DeleteField.aspx/?ListName=<%=contents[listcount] %>&&FieldName=<%=fields[fieldcount] %>" style="margin-left: 10%;" class="btn btn-danger btn-sm" role="button">Delete Field</a></div>
                                    <% } %>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" href="#collapseerer<%= listcount%>">Views</a> <a href="ViewAddEdit.aspx/?ListName=<%=contents[listcount] %>" style="margin-left: 10%;" class="btn btn-primary btn-sm" role="button">Add View</a>
                                    </h4>
                                </div>
                                <div id="collapseerer<%= listcount%>" class="panel-collapse collapse">
                                    <% for (int viewcount = 0; viewcount < views.Count; viewcount++)
                                        {     %>
                                    <div class="panel-body"><a data-toggle="collapse" href="#collapse2"><%= views[viewcount] %></a></div> <div class="panel-body"> <a href="Editview.aspx?ListName=<%=contents[listcount] %>&&ViewName=<%=views[viewcount] %>" style="margin-left: 10%;" class="btn btn-info btn-sm" role="button">Edit View</a><a id="<%= contents[listcount]%>!<%=views[viewcount] %>" href="#" style="margin-left: 10%;" class="btn btn-danger btn-sm reloadpagedeleteview" role="button">Delete View</a></div>
                                    <% } %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
    </div>
</asp:Content>


