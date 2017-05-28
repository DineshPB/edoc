<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>

<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master"
    AutoEventWireup="false" CodeFile="inbox.aspx.vb" Inherits="website_content_page_inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%  
        'If Not Page.IsPostBack Then
        If Not Session("userid") Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable

            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [suggest_master] order by date ASC"
            Dim da As New SqlDataAdapter(cmd)
            da.Fill(dt)
            'lstv.DataSource = dt
            'lstv.DataBind()
         
    %>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        E-Document Inbox
                        <br />
                        <br />
                        <small></small>
                    </h2>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <span class="glyphicon glyphicon-comment"></span>Chat
                                        <div class="btn-group pull-right">
                                            <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                                <span class="glyphicon glyphicon-chevron-down"></span>
                                            </button>
                                            <ul class="dropdown-menu slidedown">
                                                <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-refresh">
                                                </span>Refresh</a></li>
                                                <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-ok-sign">
                                                </span>Available</a></li>
                                                <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-remove">
                                                </span>Busy</a></li>
                                                <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-time"></span>
                                                    Away</a></li>
                                                <li class="divider"></li>
                                                <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-off"></span>
                                                    Sign Out</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <%--<div class="panel-body">--%>
                                    <table >
                                     <%--   <ul class="chatc">--%>
                                            <%
                                                Dim i = 0, id = 0
                                                Dim strRow = ""
                                                Dim strData As String
                                                Dim strCss As String
                            
                                                If dt.Rows.Count > 0 Then
                                                    For i = 1 To dt.Rows.Count - 1
                                    
                                                        strData = dt.Rows(i)("feedback").ToString()
                                                        id = Convert.ToInt32(dt.Rows(i)("fromid"))
                                    
                                                        If id > 0 Then
                                            %>
                                            
                                          <%--  <li class="right clearfix"><span class="chat-img pull-right">
                                                <img src="me.png" alt="User Avatar" class="img-circle" /></span>
                                                <div class="chatc-bodyc clearfix">
                                                    <div class="header" style="border:solid 1px black ;">
                                                        <small class=" text-muted" style='align:Right; padding:0 1000px;'><span class="glyphiconc glyphicon-time" ></span>13 mins ago
                                                        </small><strong class="primary-font"></strong>
                                                    </div>--%>
                                                    <tr><td></td><td style='Text-align:Right; padding:0 1000px;'">
                                                    
                                                    <%
                                                     
                                                        Response.Write("<div style='Text-align:Right; padding:0 50px;'><h4>" & strData & "</h4></div>")
                                                    %> </td></tr> <li class="clearfix"></li>
                                                <%--</div>
                                            </li>--%>
                                            <%
                                            Else
                                    %>
                                          <%--  <li class="left clearfix"><span class="chat-img pull-left">
                                                <img src="u.png" alt="User Avatar" class="img-circle" /></span>
                                                <div class="chat-body clearfix">
                                                    <div class="header">
                                                        <strong class="primary-font">Admin</strong><small class="pull-right text-muted"> <span
                                                            class="glyphicon glyphicon-time"></span>12 mins ago</small>
                                                    </div>--%>
                                                    <tr><td style='align:left'></td>
                                                    <%
                                                     
                                                        Response.Write("<div style='Text-align:left; padding:0 50px;;'><h4>" & strData & "</h4></div>")
                                                    %></tr></table>
                                                <%--</div>
                                            </li>--%>
                                            <%
                                            End If
                                        Next
                                    End If
                                End If
                         '   End If
                                %>
                                      <%--  </ul>
                                    </div>--%>

                                    <div class="panel-footer">
                                        <div class="input-group">
                                        <asp:TextBox ID="usermsg" runat="server" class="form-control input-sm" placeholder="type your message here..."></asp:TextBox>
                                               
                                                <span class="input-group-btn">
                                                    <asp:button  runat="server" class="btn btn-warning btn-sm" id="btnmsg" text="send" />
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
