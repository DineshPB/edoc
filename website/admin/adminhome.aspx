<%@ Page Title="" Language="VB" MasterPageFile="~/website/admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="adminhome.aspx.vb" Inherits="website_admin_adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>
                                        E-Document cv <br /><br /><small> Fill up  given below information to create your Cv!</small></h2>
                                    
                                    <div class="clearfix">
                                    </div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <div id="form2" data-parsley-validate class="form-horizontal form-label-left" runat="server">
                                    
                                    
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                            FullName<span class="required">*</span>
                                        </label>
                                        <div class="col-md-7 col-sm-7 col-xs-12">
                                            <asp:TextBox ID="txtfullname" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ErrorMessage="*Please Enter Fullname" ForeColor="Red" 
                                                ControlToValidate="txtfullname"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                            E-mail Id<span class="required">*</span>
                                        
                                        </label>
                                        <div class="col-md-7 col-sm-7 col-xs-12">
                                            <asp:TextBox ID="txtemailid" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ErrorMessage="*Please Enter E-mail Id" ForeColor="Red" 
                                                ControlToValidate="txtemailid"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                             Contact-No<span class="required">*</span>
                                        </label>
                                             <div class="col-md-7 col-sm-7 col-xs-12">
                                            <asp:TextBox ID="txtcontactno" runat="server" required="required"  class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" *Please Enter Contact Number" ForeColor="Red" ControlToValidate="txtcontactno"></asp:RequiredFieldValidator>
                                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" controltovalidate="txtcontactno" ErrorMessage="Please Enter Valid Pshone " ValidationExpression="[0-9]{10}"  ></asp:RegularExpressionValidator>                                  
                                        </div>
                                    </div>
                                   
                               
                                       
                                        <div class="ln_solid">
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                            <asp:Button ID="btnCancle" runat="server" Text="Cancel" class="btn btn-primary" />
                                            <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-success" />
                                            <asp:Button ID="btnupdate" runat="server" Text="Update" class="btn btn-success" />
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>

