<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master" AutoEventWireup="false"
    CodeFile="lettermaster.aspx.vb" Inherits="lettermaster" %>
      <%@ Register Src = "~/website/content page/UC_DateSelectorVB.ascx" TagName = "DateSelector" TagPrefix = "uc" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="clearfix">
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        E-Document Formal Letter
                        <br />
                        <br />
                        <small>Fill up given below information to create your letter!</small></h2>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <div id="form2" class="form-horizontal form-label-left">
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="from">
                                From<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="txtfrom" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvfrom" runat="server" ErrorMessage="*From Should no be kept empty!! "
                                    ControlToValidate="txtfrom" ForeColor="Red"></asp:RequiredFieldValidator>
                                <%--<asp:RegularExpressionValidator ID="ReqValContactPerson_SpecialChars" runat="server"
                                    CssClass="changecolor" ControlToValidate="txtfrom" Display="Dynamic" ErrorMessage="Please enter valid first name"
                                    SetFocusOnError="True" ForeColor="Red" ValidationExpression="[\%\/\\\&\?\,\'\;\:\!\-]+"></asp:RegularExpressionValidator>--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                To<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="name"  runat="server" required="required"
                                    class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Address Should no be kept empty!! "
                                    ControlToValidate="address" ForeColor="Red"></asp:RequiredFieldValidator>
                                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="changecolor"
                                    ControlToValidate="name" Display="Dynamic" ErrorMessage="Please enter valid first name"
                                    SetFocusOnError="True" ForeColor="Red" ValidationExpression="[\%\/\\\&\?\,\'\;\:\!\-]+"></asp:RegularExpressionValidator>--%>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                    Address Line ! <span class="required">*</span>
                                </label>
                                <div class="col-md-7 col-sm-7 col-xs-12">
                                    <asp:TextBox ID="address" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvto" runat="server" ErrorMessage="*Address Should no be kept empty!! "
                                        ControlToValidate="address" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                    Address Line 2 <span class="required">*</span>
                                </label>
                                <div class="col-md-7 col-sm-7 col-xs-12">
                                    <asp:TextBox ID="address2" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Address Should no be kept empty!! "
                                        ControlToValidate="address2" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                    Address Line 3 <span class="required">*</span>
                                </label>
                                <div class="col-md-7 col-sm-7 col-xs-12">
                                    <asp:TextBox ID="address3" runat="server" placeolder="Address Line 3" required="required"
                                        class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Address Should no be kept empty!! "
                                        ControlToValidate="address3" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Date">
                                Date <span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="txtdate" runat="server" ReadOnly required="required" class="form-control col-md-4 col-xs-4"
                                    placeholder="Date Should be->dd/MM/YYYY (eg.02/10/2012)"></asp:TextBox>
                                <uc:DateSelector ID = "ucDateSelector" runat = "server" required="date is required" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Subject<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="txtsubject" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvsubject" runat="server" ErrorMessage="*Subject Should no be kept empty!! "
                                    ControlToValidate="txtsubject" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Salutation:<span class="required">*</span>
                            </label>
                            <div class="form-group">
                                <asp:DropDownList ID="salutation" runat="server" class="btn btn-default dropdown-toggle"
                                    AutoPostBack="True">
                                    <asp:ListItem>Respected Sir</asp:ListItem>
                                    <asp:ListItem>Respected Madam</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="lbl" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                    First paragraph:<span class="required">*</span>
                                </label>
                                <div class="col-md-7 col-sm-7 col-xs-12">
                                    <CKEditor:CKEditorControl ID="txtfirstparagraph" runat="server" Height="200" BasePath="~/ckeditor"></CKEditor:CKEditorControl>
                                    <asp:RequiredFieldValidator ID="rfvfirsrtpara" runat="server" ErrorMessage="*Please enter content of your letter!! "
                                        ControlToValidate="txtfirstparagraph" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                    Second paragraph:<span class="required">*</span>
                                </label>
                                <div class="col-md-7 col-sm-7 col-xs-12">
                                    <CKEditor:CKEditorControl ID="txtsecondparagraph" runat="server" Height="200" BasePath="~/ckeditor"></CKEditor:CKEditorControl>
                                    <asp:RequiredFieldValidator ID="rfvsecondpara" runat="server" ErrorMessage="*Please enter content of your letter!! "
                                        ControlToValidate="txtsecondparagraph" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                    Third Paragraph:<span class="required">*</span>
                                </label>
                                <div class="col-md-7 col-sm-7 col-xs-12">
                                    <CKEditor:CKEditorControl ID="txtthirdparagraph" runat="server" Height="200" BasePath="~/ckeditor"></CKEditor:CKEditorControl>
                                    <asp:RequiredFieldValidator ID="rfvthird" runat="server" ErrorMessage="*Please enter content of your letter!! "
                                        ControlToValidate="txtthirdparagraph" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="ln_solid">
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btnCancle" runat="server" Text="Cancel" class="btn btn-primary" />
                                <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-success" />
                                <asp:Button ID="btnupdate" runat="server" Text="update" class="btn btn-success" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
