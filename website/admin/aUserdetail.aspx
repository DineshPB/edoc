<%@ Page Title="" Language="VB" MasterPageFile="~/website/admin/AdminMasterPage.master"
    AutoEventWireup="false" CodeFile="aUserdetail.aspx.vb" Inherits="website_admin_aUserdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        User Detail
                        <br />
                        <br />
                        <small>User Detail</small></h2>
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
                        <asp:GridView ID="griduser" runat="server" CssClass="table table table-striped table-hover"
                            AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField ItemStyle-Width="150px" DataField="Userid" HeaderText="User Id" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="emailid" HeaderText="E-mail Id" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="firstname" HeaderText="FirstName" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="lastname" HeaderText="LastName" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="birthdate" HeaderText="Birth Date" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="gender" HeaderText="Gender" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="contactno" HeaderText="Contact Number" />
                                <asp:BoundField ItemStyle-Width="150px" DataField="occupation" HeaderText="Occupation" />
                                <asp:TemplateField HeaderText="Block">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkblock" runat="server" CommandArgument='<%#Eval("Userid")%>'
                                            Text='<%#Eval("block")%>' CommandName="cmdblock" />
                                        <asp:HiddenField ID="hdnBlock" runat="server" Value='<%#Eval("block")%>' />
                                        <asp:HiddenField ID="hdnUserId" runat="server" Value='<%#Eval("Userid")%>' />
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
