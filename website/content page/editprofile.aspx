<%@ Page Language="VB" MasterPageFile="~/website/content page/MasterPage.master"
    AutoEventWireup="false" CodeFile="editprofile.aspx.vb" Inherits="website_editprofile" %>

<%@ Register Src="~/website/content page/UC_DateSelectorVB.ascx" TagName="DateSelector"
    TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        User Profile
                        <br />
                        <br />
                        <small></small>
                    </h2>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <asp:Image ID="userImage" runat="server" Height="150px" Width="150px" />
                    <br />
                    <h2>
                        <asp:Literal ID="fnamep" runat="server"></asp:Literal></h2>
                    <div id="form2" data-parsley-validate class="form-horizontal form-label-left" runat="server">
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                First Name<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="fname" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="ReqValContactPerson_SpecialChars" runat="server"
                                    CssClass="changecolor" ControlToValidate="fname" Display="Dynamic" ErrorMessage="Please enter valid Full name"
                                    SetFocusOnError="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Last Name<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="lname" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="changecolor"
                                    ControlToValidate="lname" Display="Dynamic" ErrorMessage="Please enter valid Full name"
                                    SetFocusOnError="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Date Of Birth<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="txtdate" runat="server" ReadOnly required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <uc:DateSelector ID="ucDateSelector" runat="server" required="date is required" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                E-mail Id<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="txtemailid" runat="server" required="required" class="form-control col-md-7 col-xs-12"
                                    ReadOnly></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Gender<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="gender" runat="server" ReadOnly required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                Occupation<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="TextBox1" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Contact-No<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="txtcontactno" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" *Please Enter Contact Number"
                                    ForeColor="Red" ControlToValidate="txtcontactno"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontactno"
                                    ErrorMessage="Please Enter Valid Phone " ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Profile Image
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:FileUpload ID="fuUserProfileImage" runat="server" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-success" />
                            </div>
                        </div>
                        <div class="ln_solid">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
