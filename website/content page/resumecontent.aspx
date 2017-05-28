<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master" AutoEventWireup="false"
    CodeFile="resumecontent.aspx.vb" Inherits="website_content_page_resumecontent" %>

<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        E-Document Resume
                        <br />
                        <br />
                        <small>Fill up given below information to create your Resume!</small></h2>
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
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <asp:TextBox ID="txtfullname" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfullname"
                                    ErrorMessage="Please Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="ReqValContactPerson_SpecialChars" runat="server"
                                    CssClass="changecolor" ControlToValidate="txtfullname" Display="Dynamic" ErrorMessage="Please enter valid Full name"
                                    SetFocusOnError="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Profile:<span class="required">*</span>
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <CKEditor:CKEditorControl ID="uprofile" runat="server" Height="200" BasePath="~/ckeditor"></CKEditor:CKEditorControl>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                E-mail Id<span class="required">*</span>
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <asp:TextBox ID="txtemailid" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemailid"
                                    ErrorMessage="Please Enter Emailid " ForeColor="Red" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Email ID"
                                    ControlToValidate="txtemailid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                </asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Contact-No<span class="required">*</span>
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <asp:TextBox ID="txtcontactno" runat="server" required="required" class="form-control col-md-7 col-xs-12"
                                    MaxLength="12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcontactno"
                                    ErrorMessage="Please Enter contact no " ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontactno"
                                    ForeColor="Red" ErrorMessage="Please Enter Valid Contact No " ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Websites:<span class="required">*</span>
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <asp:TextBox ID="txtwebsite" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="rg1" runat="server" ControlToValidate="txtwebsite" ForeColor="Red" ErrorMessage="Invalid website" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" ></asp:RegularExpressionValidator>--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Address:<span class="required">*</span>
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <asp:TextBox ID="txtaddress" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress"
                                    ErrorMessage="Please Enter Address " ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Education:<span class="required">*</span>
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <asp:TextBox ID="txteducation" runat="server" required="required" class="form-control col-md-7 col-xs-12"
                                    TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txteducation"
                                    ErrorMessage="Please Enter Education " ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Qualification:<span class="required">*</span>
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <CKEditor:CKEditorControl ID="txtqualification" runat="server" Height="200" BasePath="~/ckeditor"></CKEditor:CKEditorControl>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtqualification"
                                    ErrorMessage="Please Enter Qualificationss " ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Work experience:<span class="required">*</span>
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <CKEditor:CKEditorControl ID="txtworkexpereince" runat="server" Height="200" BasePath="~/ckeditor"></CKEditor:CKEditorControl>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtworkexpereince"
                                    ErrorMessage="Please Enter Work experience " ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Interest:<span class="required">*</span>
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <CKEditor:CKEditorControl ID="txtInterest" runat="server" Height="200" BasePath="~/ckeditor"></CKEditor:CKEditorControl>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Reference:<span class="required">*</span>
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <CKEditor:CKEditorControl ID="txtreference" runat="server" Height="200" BasePath="~/ckeditor"></CKEditor:CKEditorControl>
                            </div>
                        </div>
                    </div>
                    <div class="ln_solid">
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <asp:Button ID="btnCancle" runat="server" Text="Cancel" class="btn btn-primary" />
                            <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-success" />
                            <asp:Button ID="btnupdate" runat="server" Text="Update" class="btn btn-success" />
                            <%--<asp:Button ID="btnshow" runat="server" Text="Show" class="btn btn-success" />--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
