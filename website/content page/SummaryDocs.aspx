<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master" AutoEventWireup="false"
    CodeFile="SummaryDocs.aspx.vb" Inherits="website_content_page_SummaryDocs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="x_panel">
              <asp:Button ID="btnSave" runat="server" Text="Share" 
                                    class="btn btn-success" 
                    PostBackUrl="~/website/content page/share.aspx" />
            
                <div class="x_title">
                    <h2>
                        Resume <small>Here it will show Resume</small></h2>
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
                    <asp:GridView ID="grdResume" runat="server" CssClass="table table table-striped table-hover"
                        AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="fullname" HeaderText="Full Name" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="jobtitle" HeaderText="JobTitle" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="emailid" HeaderText="Email Id" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="website" HeaderText="Website" />
                           
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%#Eval("crid")%>' Text='Edit'
                                        CommandName="cmdEdit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("crid")%>'
                                        Text='Delete' CommandName="cmdDelete" />
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkword" runat="server" CommandArgument='<%#Eval("crid")%>' Text='WORD'
                                        CommandName="cmdword" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                             <ItemTemplate>
                                    <asp:LinkButton ID="lnkpdf" runat="server" CommandArgument='<%#Eval("crid")%>' Text='PDF'
                                        CommandName="cmdpdf" />
                                </ItemTemplate></asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Cv<small>Here it will show Cv</small></h2>
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
                    <asp:GridView ID="gridcv" runat="server" CssClass="table table table-striped table-hover"
                        AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="fullname" HeaderText="Full Name" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="jobtitle" HeaderText="JobTitle" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="emailid" HeaderText="Email Id" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="website" HeaderText="Website" />
                            <%-- <asp:BoundField ItemStyle-Width="150px" DataField="type" HeaderText="Type" />--%>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%#Eval("crid")%>' Text='Edit'
                                        CommandName="cmdEdit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("crid")%>'
                                        Text='Delete' CommandName="cmdDelete" />
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkword" runat="server" CommandArgument='<%#Eval("crid")%>' Text='WORD'
                                        CommandName="cmdword" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                             <ItemTemplate>
                                    <asp:LinkButton ID="lnkpdf" runat="server" CommandArgument='<%#Eval("crid")%>' Text='PDF'
                                        CommandName="cmdpdf" />
                                </ItemTemplate></asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="clearfix">
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Formal Letter<small>Here it will show Letter Date!</small></h2>
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
                    <asp:GridView ID="gridletter" runat="server" CssClass="table table table-striped table-hover"
                        AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="type" HeaderText="Letter Type" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="sender" HeaderText="Sender" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="receiver" HeaderText="Reciever" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="contactno" HeaderText="Contactno" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="senddate" HeaderText="Date" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%#Eval("letterid")%>'
                                        Text='Edit' CommandName="cmdEdit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("letterid")%>'
                                        Text='Delete' CommandName="cmdDelete" />
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkshow" runat="server" CommandArgument='<%#Eval("letterid")%>' Text='Show'
                                        CommandName="cmdshow" />
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
                        Informal Letter<small>Here it will show Letter Date!</small></h2>
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
                    <asp:GridView ID="gridinformal" runat="server" CssClass="table table table-striped table-hover"
                        AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="type" HeaderText="Letter Type" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="sender" HeaderText="Sender" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="receiver" HeaderText="Reciever" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="contactno" HeaderText="Contactno" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="senddate" HeaderText="Date" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%#Eval("letterid")%>'
                                        Text='Edit' CommandName="cmdEdit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("letterid")%>'
                                        Text='Delete' CommandName="cmdDelete" />
                                </ItemTemplate>
                            </asp:TemplateField>
                              <asp:TemplateField>
                              <ItemTemplate>
                                    <asp:LinkButton ID="lnkshow" runat="server" CommandArgument='<%#Eval("letterid")%>' Text='Show'
                                        CommandName="cmdshow" />
                                </ItemTemplate>
                                  </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="clearfix">
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Application <small>Here it will show Apllication Date!</small></h2>
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
                    <asp:GridView ID="gridapplication" runat="server" CssClass="table table table-striped table-hover"
                        AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="fullname" HeaderText="FullName" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="sender" HeaderText="Sender" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="receiver" HeaderText="Reciever" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="heading" HeaderText="heading" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="date" HeaderText="Date" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%#Eval("applicationid")%>'
                                        Text='Edit' CommandName="cmdEdit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("applicationid")%>'
                                        Text='Delete' CommandName="cmdDelete" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                              <ItemTemplate>
                                    <asp:LinkButton ID="lnkshow" runat="server" CommandArgument='<%#Eval("applicationid")%>' Text='Show'
                                        CommandName="cmdshow" />
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
                        Notice <small>Here it will show Notice Date!</small></h2>
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
                    <asp:GridView ID="gridnotice" runat="server" CssClass="table table table-striped table-hover"
                        AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="fullname" HeaderText="FullName" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="sender" HeaderText="Sender" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="receiver" HeaderText="Reciever" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="heading" HeaderText="heading" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="date" HeaderText="Date" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%#Eval("noticeid")%>'
                                        Text='Edit' CommandName="cmdEdit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("noticeid")%>'
                                        Text='Delete' CommandName="cmdDelete" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkshow" runat="server" CommandArgument='<%#Eval("noticeid")%>' Text='Show'
                                        CommandName="cmdshow" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="clearfix">
        </div>
    </div>
</asp:Content>
