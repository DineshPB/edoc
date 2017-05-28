<%@ Page Title="" Language="VB" MasterPageFile="~/website/admin/AdminMasterPage.master"  AutoEventWireup="false"
    CodeFile="noticeuser.aspx.vb" Inherits="website_admin_noticeuser" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Notice User Detail
                        <br />
                        <br />
                        <small>User Notice Detail</small></h2>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <div class="x_content">
                        <asp:GridView ID="gridnoticeuser" runat="server" CssClass="table table table-striped table-hover"
                            Width="100%" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField ItemStyle-Width="150px" DataField="sender" HeaderText="sender" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="receiver" HeaderText="receiver" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="subject" HeaderText="subject" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="fullname" HeaderText="fullname" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="heading" HeaderText="heading" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="date" HeaderText="date" />
                                <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkshow" runat="server" CommandArgument='<%#Eval("noticeid")%>' Text='Show'
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
