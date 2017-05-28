<%@ Page Title="" Language="VB" MasterPageFile="~/website/admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="userfeedback.aspx.vb" Inherits="website_admin_userfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                 Application  User Detail
                        <br />
                        <br />
                        <small>User Notice Detail</small></h2>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <div class="x_content">
                        <%--<table class="table">
                        <thead>
                            <tr>
                                <th>
                                    #
                                </th>
                                <th>
                                    First Name
                                </th>
                                <th>
                                    Last Name
                                </th>
                                <th>
                                    Username
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">
                                    1
                                </th>
                                <td>
                                    Mark
                                </td>
                                <td>
                                    Otto
                                </td>
                                <td>
                                    @mdo
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    2
                                </th>
                                <td>
                                    Jacob
                                </td>
                                <td>
                                    Thornton
                                </td>
                                <td>
                                    @fat
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    3
                                </th>
                                <td>
                                    Larry
                                </td>
                                <td>
                                    the Bird
                                </td>
                                <td>
                                    @twitter
                                </td>
                            </tr>
                        </tbody>
                    </table>--%>
                        <asp:GridView ID="gridsuggest" runat="server" CssClass="table table table-striped table-hover"
                            AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField ItemStyle-Width="150px" DataField="Userid" HeaderText="User ID" />
                               <asp:BoundField ItemStyle-Width="150px" DataField="suggestid" HeaderText="Suggestion ID" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="suggestion" HeaderText="Suggestion" />
                                  <asp:BoundField ItemStyle-Width="150px" DataField="feedback" HeaderText="Admin feedback" />
                                   <asp:TemplateField HeaderText="Reply">
                                
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkshow" runat="server" CommandArgument='<%#Eval("fromid")%>' Text='Reply'
                                        CommandName="cmdshow" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div class="ln_solid">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

