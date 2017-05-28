<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master" AutoEventWireup="false" CodeFile="verify.aspx.vb" Inherits="website_verify" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_content">
                    <div id="form2" data-parsley-validate class="form-horizontal form-label-left" runat="server">
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Email <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtemailid" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <br />
                            </div>
&nbsp;<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btnCancle" runat="server" Text="Cancel Verification Mail" 
                                    class="btn btn-primary" />
                                <asp:Button ID="btnSave" runat="server" Text="Send Verification Mail" 
                                    class="btn btn-success" />
                                    <asp:Label ID="Label2" runat="server" 
                
                Text="This is the Verificaion code send to you by Edoc Creator for the login " 
                Visible="False"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   </asp:content>
