<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master" AutoEventWireup="false" CodeFile="suggestion.aspx.vb" Inherits="website_suggestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>
                                      Suggestion Form <small>Fill up the detail given below!</small></h2>
                                    
                                    <div class="clearfix">
                                    </div>
                                </div>

                                <div class="x_content">
                                    <br />
                                    <div id="form2" data-parsley-validate class="form-horizontal form-label-left" runat="server">
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                          Name <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:TextBox ID="txttName" runat="server" required="required" 
                                                class="form-control col-md-7 col-xs-12" Enabled="False"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                                runat="server" ErrorMessage="*Name Cannot Be Set as Empty" 
                                                ControlToValidate="txttName" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                          Email-id <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:TextBox ID="txtemailid" runat="server" required="required" 
                                                class="form-control col-md-7 col-xs-12" Enabled="False"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                                runat="server" ErrorMessage="*emailid Cannot Be Set as Empty" 
                                                ControlToValidate="txtemailid" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                          Suggestion/Feedback <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:TextBox ID="suggestion" runat="server" required="required" 
                                                class="form-control col-md-7 col-xs-12" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                                runat="server" ErrorMessage="*Suggestion  Cannot Be Set as Empty" 
                                                ControlToValidate="suggestion" ForeColor="Red"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                   <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                            <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-success" />
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
    </div>
    </div>
</asp:Content>

