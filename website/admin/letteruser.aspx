<%@ Page Title="" Language="VB"MasterPageFile="~/website/admin/AdminMasterPage.master"  AutoEventWireup="false" CodeFile="letteruser.aspx.vb" Inherits="website_admin_letteruser" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
         Letter  User Detail
                        <br />
                        <br />
                        <small>User Letter Detail</small></h2>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <div class="x_content">
                        
                        <asp:GridView ID="gridletteruser" runat="server" CssClass="table table table-striped table-hover"
                            AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField ItemStyle-Width="150px" DataField="letterid" HeaderText="letterid Id" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="Userid" HeaderText="User ID" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="sender" HeaderText="sender" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="receiver" HeaderText="receiver" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="subject" HeaderText="subject" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="type" HeaderText="type" />
                               
                                <asp:BoundField ItemStyle-Width="150px" DataField="senddate" HeaderText="date" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="contactno" HeaderText="contactno" />
                               <%-- <asp:BoundField ItemStyle-Width="150px" DataField="secondparagraph" HeaderText="secondparagraph" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="thirdparagraph" HeaderText="thirdparagraph" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="firstparagraph" HeaderText="firstparagraph" />--%>
                                <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkshow" runat="server" CommandArgument='<%#Eval("letterid")%>' Text='Show'
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

