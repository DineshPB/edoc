<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master" AutoEventWireup="false" CodeFile="share.aspx.vb" Inherits="website_content_page_share" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Sharing Data<small>Enter Email,select the documents that you want to share!</small></h2>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <div id="form2" data-parsley-validate class="form-horizontal form-label-left" runat="server">
                      
                        <div class="form-group">
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">&nbsp;<span class="required">Send Email*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtTo" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Please Enter Valid Email Address"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]w+)*\.\w+([-.]\+)*" ControlToValidate="txtTo"
                                    ForeColor="Red"></asp:RegularExpressionValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Email Cannot Be Set as Empty"
                                    ControlToValidate="txtTo" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
             
                         <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">&nbsp;<span class="required">File Upload*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                               
            <asp:FileUpload ID="fuAttachment" runat="server" />
                              
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Email Cannot Be Set as Empty"
                                    ControlToValidate="fuAttachment" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                                </div>
                           
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btnCancle" runat="server" Text="Cancel" class="btn btn-primary" />
                                <asp:Button ID="btnSave" runat="server" Text="Share Data" 
                                    class="btn btn-success" />
                            </div>
                
                </div>
            </div>
        </div>
    </div>
    <!-- /bootstrap-daterangepicker -->
    </div>
</asp:Content>

