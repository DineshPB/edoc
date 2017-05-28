<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master" AutoEventWireup="false" CodeFile="Verification.aspx.vb" Inherits="website_Verification" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_content">
                    <div id="form2" data-parsley-validate class="form-horizontal form-label-left" runat="server">
                    <h1>Enter Verification Code Sent to your e-mailid </h1>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                <span class="required">Enter Code Received From Mail *</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtcode" runat="server" required="required" 
                                    class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <br />
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <br />
                            </div>
&nbsp;<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btnSave" runat="server" Text="Verify Code" 
                                    class="btn btn-success" />
                                <asp:Label ID="Label1" runat="server" Text="Insert Received Code On your Mail!"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text="Verificatiob False" Visible="False"></asp:Label>
                            </div>
                            <script>
                                alert("Enter Verification Code here to verify Send in to your entered emailid on Registration Page!! ");
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   </asp:content>


