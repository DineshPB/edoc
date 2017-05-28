<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master" AutoEventWireup="false"
    CodeFile="lettertype.aspx.vb" Inherits="website_content_page_lettertype" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="clearfix">
        <div class="x_title">
            <h2>
                E-Document Letter
                <br />
                <br />
                <small>Select the type of letter to create!</small></h2>
            <div class="clearfix">
            </div>
            <div class="x_content">
                <br />
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <asp:Button ID="Formal" runat="server" Text="Formal Letter" class="btn btn-info btn-lg btn btn-dark"
                            Height="70px" Width="142px" 
                            PostBackUrl="~/website/content page/lettermaster.aspx" />
                        <asp:Button ID="Informal" runat="server" Text="InFormal Letter" class="btn btn-info btn-lg"
                            Height="70px" Width="142px" 
                            PostBackUrl="~/website/content page/Informallettermaster.aspx" />
                        <div class="ln_solid">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
