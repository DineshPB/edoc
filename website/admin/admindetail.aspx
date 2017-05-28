<%@ Page Title="" Language="VB" MasterPageFile="~/website/admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="admindetail.aspx.vb" Inherits="website_admin_admindetail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                    Admin Detail
                        <br />
                        <br />
                        <small></small></h2>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <div class="x_content">
                        
                        <asp:GridView ID="gridadmin" runat="server" CssClass="table table table-striped table-hover"
                            AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField ItemStyle-Width="150px" DataField="Adminid" HeaderText="Admin Id" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="adminemailid" HeaderText="Admin E-mail Id" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="adminfullname" HeaderText="Admin Fullname" />
                                
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

