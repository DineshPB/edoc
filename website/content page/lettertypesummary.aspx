<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master" AutoEventWireup="false" CodeFile="lettertypesummary.aspx.vb" Inherits="website_content_page_lettertypesummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
        <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Letter Formal <small>Here it will show Formal Letter</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                            aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Settings 1</a> </li>
                                <li><a href="#">Settings 2</a> </li>
                            </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                    </ul>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <asp:GridView ID="gridformall" runat="server" CssClass="table table table-striped table-hover"
                        AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="type" HeaderText="Letter Type" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="sender" HeaderText="Sender" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="receiver" HeaderText="Reciever" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="contactno" HeaderText="Contactno" />
                             <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%#Eval("letterid")%>'  Text='Edit' CommandName="cmdEdit"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("letterid")%>'  Text='Delete' CommandName="cmdDelete"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                       Informal Letter<small>Here it will show Informal Letter!</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                            aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Settings 1</a> </li>
                                <li><a href="#">Settings 2</a> </li>
                            </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                    </ul>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <asp:GridView ID="gridinfromall" runat="server" CssClass="table table table-striped table-hover"
                        AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="type" HeaderText="Letter Type" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="sender" HeaderText="Sender" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="receiver" HeaderText="Reciever" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="contactno" HeaderText="Contactno" />
                             <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%#Eval("letterid")%>'  Text='Edit' CommandName="cmdEdit"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("letterid")%>'  Text='Delete' CommandName="cmdDelete"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="clearfix">
    </div>
</asp:Content>

