<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master"
    AutoEventWireup="false" CodeFile="adminreply.aspx.vb" Inherits="website_content_page_adminreply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="x_content">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>
                            Reply from E-document Creator <small>!</small></h2>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
            <div class="x_content">
                <br />
                <div class="bs-example" data-example-id="simple-jumbotron">
                    <div class="jumbotron">
                        <h1>
                        </h1>
                        <p>
                            <asp:Literal ID="adminreply" runat="server"></asp:Literal></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
