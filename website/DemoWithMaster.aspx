<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master" AutoEventWireup="false"
    CodeFile="DemoWithMaster.aspx.vb" Inherits="website_DemoWithMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- page content -->
            <div class="clearfix">
            </div>         
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>
                                E-Document cv
                                <br />
                                <br />
                                <small>Fill up given below information to create your Cv!</small></h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a href="SinglePro/index.html">Home</a></li>
                                <li><a href="login.aspx">Login</a></li>
                                <li><a href="registeruser.aspx">Sign up!</a></li>
                                <li><a href="changepassoword2.aspx">change password</a></li>
                            </ul>
                            <div class="clearfix">
                            </div>
                        </div>
                        <div class="x_content">
                            <br />
                            <div data-parsley-validate class="form-horizontal form-label-left">
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                        FullName<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:TextBox ID="txtfullname" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please Enter Fullname"
                                            ForeColor="Red" ControlToValidate="txtfullname"></asp:RequiredFieldValidator>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                        E-mail Id<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:TextBox ID="txtemailid" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please Enter E-mail Id"
                                            ForeColor="Red" ControlToValidate="txtemailid"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                        Contact-No<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:TextBox ID="txtcontactno" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" *Please Enter Contact Number"
                                            ForeColor="Red" ControlToValidate="txtcontactno"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                        Website:<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:TextBox ID="txtwebsite" runat="server" required="required" class="form-control col-md-7 col-xs-12"
                                            TextMode="SingleLine"></asp:TextBox>
                               
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                        Address:<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:TextBox ID="txtaddress" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Please Enter Address"
                                            ForeColor="Red" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                        Education:<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:TextBox ID="txteducation" runat="server" required="required" class="form-control col-md-7 col-xs-12"
                                            TextMode="MultiLine"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Please Enter Education"
                                            ForeColor="Red" ControlToValidate="txteducation"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                        Qualification:<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:TextBox ID="txtqualification" runat="server" required="required" class="form-control col-md-7 col-xs-12"
                                            TextMode="MultiLine"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Please Enter Qualification"
                                            ForeColor="Red" ControlToValidate="txtqualification"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                        Interest:<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:TextBox ID="txtInterest" runat="server" required="required" class="form-control col-md-7 col-xs-12"
                                            TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                        Reference:<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:TextBox ID="txtreference" runat="server" required="required" class="form-control col-md-7 col-xs-12"
                                            TextMode="SingleLine"></asp:TextBox>
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
