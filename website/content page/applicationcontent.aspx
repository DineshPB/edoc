<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master" AutoEventWireup="false"
    CodeFile="applicationcontent.aspx.vb" Inherits="website_content_page_applicationcontent" %>
     <%@ Register Src = "~/website/content page/UC_DateSelectorVB.ascx" TagName = "DateSelector" TagPrefix = "uc" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        E-Document Application
                        <br />
                        <br />
                        <small>Fill up given below information to create your Application!</small></h2>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <div id="form2" data-parsley-validate class="form-horizontal form-label-left" runat="server">
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                FullName:-<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="txtfullname" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Please Enter Fullname"
                                    ForeColor="Red" ControlToValidate="txtfullname"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="ReqValContactPerson_SpecialChars" runat="server"
                                    CssClass="changecolor" ControlToValidate="txtfullname" Display="Dynamic" ErrorMessage="Please enter valid Information"
                                    SetFocusOnError="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Date:-<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                
 <asp:TextBox ID="txtdate" runat="server" ReadOnly required="required" class="form-control col-md-7 col-xs-12"
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Please Enter Subject"
                                    ForeColor="Red" ControlToValidate="txtsubject"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Application Heading<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="txtheading" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Please Enter Application Heading"
                                    ForeColor="Red" ControlToValidate="txtheading"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                    CssClass="changecolor" ControlToValidate="txtheading" Display="Dynamic" ErrorMessage="Please enter valid Information"
                                    SetFocusOnError="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Sender:<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <asp:TextBox ID="txtsender" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Please Enter Sender name"
                                    ForeColor="Red" ControlToValidate="txtsender"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                    CssClass="changecolor" ControlToValidate="txtfullname" Display="Dynamic" ErrorMessage="Please enter valid Sender Name name"
                                    SetFocusOnError="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Receiver:<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                               
                                <asp:TextBox ID="txtreceiver" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Please Enter Receiver name"
                                    ForeColor="Red" ControlToValidate="txtreceiver"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                    CssClass="changecolor" ControlToValidate="txtreceiver" Display="Dynamic" ErrorMessage="Please enter valid Receiver name"
                                    SetFocusOnError="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                First paragraph:<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <CKEditor:CKEditorControl ID="txtfirstpara" runat="server" Height="200" BasePath="~/ckeditor">
                                </CKEditor:CKEditorControl>
                                <asp:RequiredFieldValidator ID="rfvfirsrtpara" runat="server" ErrorMessage="*Please enter content of your letter!! "
                                    ControlToValidate="txtfirstpara" ForeColor="Red"></asp:RequiredFieldValidator>
                                <%--<div class="grid-container">
                                    <div class="grid-width-100">
                                        <div id="editor">
                                            &nbsp;
                                        </div>
                                    </div>
                                </div>
                                <div class="adjoined-bottom">
                                </div>--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Seond paragraph:<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <div class="grid-container">
                                    <div class="grid-width-100">
                                        <div id="Div1">
                                            &nbsp;<CKEditor:CKEditorControl ID="txtsecondpara" runat="server" Height="200" BasePath="~/ckeditor">
                                            </CKEditor:CKEditorControl>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please enter content of your letter!! "
                                                ControlToValidate="txtsecondpara" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <script>
                                                // Replace the <textarea id="editor1"> with a CKEditor
                                                // instance, using default configuration.
                                                CKEDITOR.replace('editor1');
                                            </script>
                                        </div>
                                    </div>
                                </div>
                                <div class="adjoined-bottom">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Third paragraph(optional):<span class="required">*</span>
                            </label>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <div class="grid-container">
                                    <div class="grid-width-100">
                                        <div id="Div2">
                                            &nbsp;<CKEditor:CKEditorControl ID="txtthirdpara" runat="server" Height="200" BasePath="~/ckeditor">
                                            </CKEditor:CKEditorControl>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please enter content of your letter!! "
                                                ControlToValidate="txtthirdpara" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <script>
                                                // Replace the <textarea id="editor1"> with a CKEditor
                                                // instance, using default configuration.
                                                CKEDITOR.replace('editor1');
                                            </script>
                                        </div>
                                    </div>
                                </div>
                                <div class="adjoined-bottom">
                                </div>
                            </div>
                        </div>
                        <div class="ln_solid">
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btnCancle" runat="server" Text="Cancel" class="btn btn-primary" />
                                <asp:Button ID="btnSave" runat="server" Text="Save " class="btn btn-success" />
                                <asp:Button ID="btnupdate" runat="server" Text="Update" class="btn btn-success" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
