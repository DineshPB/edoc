<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master"
    AutoEventWireup="false" CodeFile="registerusercontent.aspx.vb" Inherits="website_content_page_registerusercontent" %>
    <%@ Register Src = "~/website/content page/UC_DateSelectorVB.ascx" TagName = "DateSelector" TagPrefix = "uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
            <h1 align="center"><asp:Label ID="label3" runat="server" ForeColor="Red" 
                    Visible="False" Enabled="False"></asp:Label></h1>
                <div class="x_title">
                    <h2>
                        Registrtion Form <small>Fill up the detail given below!</small></h2>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <div id="form2" data-parsley-validate class="form-horizontal form-label-left" runat="server">

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                First Name <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtFirstName" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*First Name Cannot Be Set as Empty"
                                    ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="ReqValContactPerson_SpecialChars" runat="server"
                                    CssClass="changecolor" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="Please enter valid Full name"
                                    SetFocusOnError="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Last Name <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtLastName" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Last Name Cannot Be Set as Empty"
                                    ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" CssClass="changecolor"
                                    ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Please enter valid Full name"
                                    SetFocusOnError="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Occupation <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="occu" class="btn btn-default dropdown-toggle" runat="server">
                                    <asp:ListItem>Air Force</asp:ListItem>
                                    <asp:ListItem>Business Person</asp:ListItem>
                                    <asp:ListItem>Camera Man</asp:ListItem>
                                    <asp:ListItem>Charity / Social Work</asp:ListItem>
                                    <asp:ListItem>Chartered Accountant</asp:ListItem>
                                    <asp:ListItem>College / University Teacher</asp:ListItem>
                                    <asp:ListItem>Diplomat</asp:ListItem>
                                    <asp:ListItem>Doctor</asp:ListItem>
                                    <asp:ListItem>Engineer</asp:ListItem>
                                    <asp:ListItem>Film Producer</asp:ListItem>
                                    <asp:ListItem>Government Service</asp:ListItem>
                                    <asp:ListItem>House Wife</asp:ListItem>
                                    <asp:ListItem>Journalist</asp:ListItem>
                                    <asp:ListItem>Labour</asp:ListItem>
                                    <asp:ListItem>Lawyer</asp:ListItem>
                                    <asp:ListItem>Media</asp:ListItem>
                                    <asp:ListItem>Military</asp:ListItem>
                                    <asp:ListItem>Missionary</asp:ListItem>
                                    <asp:ListItem>Navy</asp:ListItem>
                                    <asp:ListItem>News Broadcaster</asp:ListItem>
                                    <asp:ListItem>Official</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                    <asp:ListItem>Police</asp:ListItem>
                                    <asp:ListItem>Press</asp:ListItem>
                                    <asp:ListItem>Private Service</asp:ListItem>
                                    <asp:ListItem>Publisher</asp:ListItem>
                                    <asp:ListItem>Reporter</asp:ListItem>
                                    <asp:ListItem>Researcher</asp:ListItem>
                                    <asp:ListItem>Retired</asp:ListItem>
                                    <asp:ListItem>Sea Man</asp:ListItem>
                                    <asp:ListItem>Self-Employed / Freelancer</asp:ListItem>
                                    <asp:ListItem>Student</asp:ListItem>
                                    <asp:ListItem>Trader</asp:ListItem>
                                    <asp:ListItem>TV Producer</asp:ListItem>
                                    <asp:ListItem>Unemployed</asp:ListItem>
                                    <asp:ListItem>UN Official</asp:ListItem>
                                    <asp:ListItem>Worker</asp:ListItem>
                                    <asp:ListItem>Writer</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Occupation Cannot Be Set as Empty"
                                    ControlToValidate="occu" ForeColor="Red"></asp:RequiredFieldValidator>
                                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" CssClass="changecolor"
                                    ControlToValidate="occu" Display="Dynamic" ErrorMessage="Please enter valid Occupation"
                                    SetFocusOnError="True" ValidationExpression="[\%\/\\\&\?\,\'\;\:\!\-]+"></asp:RegularExpressionValidator>--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                Date Of Birth <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                             <uc:DateSelector ID = "ucDateSelector" runat = "server" required="date is required" />

                               
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Contact no <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtcon" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidato" runat="server" ErrorMessage="*Contactno Cannot Be Set as Empty"
                                    ControlToValidate="txtcon" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressio" runat="server" ControlToValidate="txtcon"
                                    ErrorMessage="Contact No Should be 10 Digit Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
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
                                    <label class="btn btn-default" data-toggle-class="btn btn-default" data-toggle-passive-class="btn btn-default">
                                        &nbsp; &nbsp;<asp:RadioButton ID="Rdomale" Text="Male" runat="server" GroupName="rdogender"
                                            ValidationGroup="rdogender" />
                                    </label>
                                    <label class="btn btn-default" data-toggle-class="btn btn-default" data-toggle-passive-class="btn btn-default">
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
                                <asp:Button ID="btnSave" runat="server" Text="Register and Verify Account" 
                                    class="btn btn-success" />
                            </div>  <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" 
                
                Text="This is the Verificaion code send to you by Edoc Creator for the login " 
                Visible="False"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /bootstrap-daterangepicker -->
    <script>
        $(function () {
            $("#datepicker").datepicker();
        });
  </script>
</asp:Content>
