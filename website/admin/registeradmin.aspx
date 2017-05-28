<%@ Page Title="" Language="VB"MasterPageFile="~/website/admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="registeradmin.aspx.vb" Inherits="website_admin_registeradmin" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                     Admin   Registrtion Form <small>Fill up the detail given below!</small></h2>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <div id="form2" data-parsley-validate class="form-horizontal form-label-left" runat="server">
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                              Fullname<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtname" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*First Name Cannot Be Set as Empty"
                                    ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        
                        
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Date Of Birth <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="dob" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Date of Birth Cannot Be Set as Empty"
                                    ControlToValidate="dob" ForeColor="Red"></asp:RequiredFieldValidator>
                                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="dob"
                                    ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
                                    ErrorMessage="Invalid date format." ValidationGroup="Group1" />--%>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Email <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtemailid" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Please Enter Valid Email Address"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]w+)*\.\w+([-.]\+)*" ControlToValidate="txtemailid"
                                    ForeColor="Red"></asp:RegularExpressionValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Email Cannot Be Set as Empty"
                                    ControlToValidate="txtemailid" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Password<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtpassword" runat="server" required="required" class="form-control col-md-7 col-xs-12"
                                    TextMode="Password"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationExpression='^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$'
                                    ErrorMessage="*Password must contain minimum 8 characters,atleast 1 uppercase,1 lowercare,1 number,1 special character"
                                    ControlToValidate="txtpassword" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Confirm Password:<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtconfirmpassword" runat="server" required="required" class="form-control col-md-7 col-xs-12"
                                    TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Password do not match"
                                    ControlToValidate="txtconfirmpassword" ControlToCompare="txtpassword" ForeColor="Red"></asp:CompareValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"
                                    ErrorMessage="Password must contain minimum 8 characters,atleast 1 uppercase,1 lowercare,1 number,1 special character"
                                    ControlToValidate="txtconfirmpassword" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                Gender</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div id="gender" class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                        &nbsp; &nbsp;<asp:RadioButton ID="Rdomale" Text="Male" runat="server" GroupName="rdogender"
                                            ValidationGroup="rdogender" />
                                    </label>
                                    <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                        <asp:RadioButton ID="Rdofemale" Text="Female" runat="server" GroupName="rdogender"
                                            TabIndex="1" ValidationGroup="rdogender" />
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="ln_solid">
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btnCancle" runat="server" Text="Cancel" class="btn btn-primary" />
                                <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-success" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
