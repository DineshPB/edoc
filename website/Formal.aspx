<%@ Page Language="VB" AutoEventWireup="false" CodeFile="~/website/Formal.aspx.vb"
    Inherits="website_letterdata" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 842px; width: 928px; /* to centre page on screen*/
        margin-left: auto; margin-right: auto;">
    <form id="form1" runat="server">
    <div id="toinfo" align="left">
        <table>
            <tr>
                To,
                <td>
                    <asp:TextBox ID="name" runat="server" placeholder="Company Name/Person Name" Width="250px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="rgname" runat="server" ControlToValidate="name"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}" Text="Enter a valid name" />
                    <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="name" ErrorMessage="Name is Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="address" runat="server" placeholder="Company Address/Person Address line 1"
                        Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="address"
                        ErrorMessage="Address is Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="address2" runat="server" placeholder="Company Address/Person Address line 2"
                        Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="address2"
                        ErrorMessage="Address is Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="address3" runat="server" placeholder="Company Address/Person Address line 3"
                        Width="250px" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div align="left">
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="date" runat="server" placeholder="Date of Letter" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="date"
                        ErrorMessage="Address is Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="subject" runat="server" placeholder="Subject of Letter" Width="600px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="subject"
                        ErrorMessage="Subject is Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="sir" runat="server"  Text="Dear Sir,"></asp:RadioButton>
                    <br />
                    <asp:RadioButton ID="madam" runat="server"  Text="Dear Madam,">
                    </asp:RadioButton>
                    <br />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table>
            <tr>
                <td>
                    <br />
                    <br />
                    <br />
                    Fill Up the first Paragraph
                </td>
            </tr>
            <tr>
                <td>
                    <CKEditor:CKEditorControl ID="firstpara" placeholder="Fill Up the first Paragraph"
                        runat="server" Toolbar="Full"></CKEditor:CKEditorControl>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="firstpara"
                        ErrorMessage="Address is Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    Fill Up the second Paragraph
                </td>
            </tr>
            <tr>
                <td>
                    <CKEditor:CKEditorControl ID="secondpara" runat="server" placeholder="Fill Up the second Paragraph"
                        Toolbar="Full"></CKEditor:CKEditorControl>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="secondpara"
                        ErrorMessage="Address is Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    Fill Up the Third Paragraph
                </td>
            </tr>
            <tr>
                <td>
                    <CKEditor:CKEditorControl ID="thirdpara" runat="server" placeholder="Fill Up the Third Paragraph"
                        Toolbar="Full"></CKEditor:CKEditorControl>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="thirdpara"
                        ErrorMessage="Address is Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <div id="Div1" align="left">
        <table>
            <tr>
                Your Sincerely
                <td>
                    <asp:TextBox ID="senderName" runat="server" placeholder="Sender Name" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="senderName"
                        ErrorMessage="Address is Required!"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regName" runat="server" ControlToValidate="senderName"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}" Text="Enter a valid Sender name!"
                        ForeColor="Red" />
                </td>

            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="phonenumber" runat="server" placeholder="Sender Contact Number"
                        Width="250px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phonenumber"
                        ErrorMessage="RegularExpressionValidator" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr><td><asp:Button ID="savel" Text="Save And Show" runat="server" /></td></tr>
        </table>
    </div>
   
    </form>
</body>
</html>
