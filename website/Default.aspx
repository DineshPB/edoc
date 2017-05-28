<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="website_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="../../../src/js/jspdf.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        var doc = new jsPDF();
        var specialElementHandlers = {
            '#editor': function (element, renderer) {
                return true;
            }
        };

        $('#cmd').click(function () {
            doc.fromHTML($('#content').html(), 15, 15, {
                'width': 170,
                'elementHandlers': specialElementHandlers
            });
            doc.save('sample-file.pdf');
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="content">
            <h3>
                Hello, this is a H3 tag</h3>
            <p>
                a pararaph</p>
        </div>
        <div id="editor">
        </div>
        <button id="cmd">
            generate PDF</button>
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div style="width: 40%">
        <ajax:TabContainer ID="resume" runat="server">
            <ajax:TabPanel ID="basicinfo" runat="server">
                <HeaderTemplate>
                    Basic Information
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:Panel ID="Basicinfop" runat="server">
                        <table align="center">
                            <tr>
                                <td>
                                </td>
                                <td align="right">
                                </td>
                                <td align="Left">
                                    <b>Basic Information:</b>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    FullName:
                                </td>
                                <td>
                                </td>
                                <td align="left">
                                    Emailid:
                                </td>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtfullname" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtemailid" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        Contact Number:-
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left">
                                        Website:
                                    </td>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtwebsites" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            Address:
                                        </td>
                                        <td>
                                        </td>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                        </table>
                    </asp:Panel>
                </ContentTemplate>
            </ajax:TabPanel>
            <ajax:TabPanel ID="tbpnlusrdetails" runat="server">
                <HeaderTemplate>
                    User Details
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:Panel ID="Panel1" runat="server">
                        <table align="center">
                            <tr>
                                <td align="right" colspan="2">
                                </td>
                                <td>
                                    <b>User Details</b>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    UserName:
                                </td>
                                <td>
                                    <b>Suresh Dasari</b>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    FirstName:
                                </td>
                                <td>
                                    <b>Suresh</b>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    LastName:
                                </td>
                                <td>
                                    <b>Dasari</b>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    Email:
                                </td>
                                <td>
                                    <b>sureshbabudasari@gmail.com</b>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    Phone No:
                                </td>
                                <td>
                                    <b>1234567890</b>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    Location:
                                </td>
                                <td align="left">
                                    <b>Hyderabad</b>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </ContentTemplate>
            </ajax:TabPanel>
            <ajax:TabPanel ID="tbpnljobdetails" runat="server">
                <HeaderTemplate>
                    Job Details
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:Panel ID="Panel2" runat="server">
                        <table align="center">
                            <tr>
                                <td>
                                </td>
                                <td align="right">
                                </td>
                                <td>
                                    <b>Job Details</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td align="right">
                                    Job Type:
                                </td>
                                <td>
                                    <b>Software</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td align="right">
                                    Industry:
                                </td>
                                <td>
                                    <b>IT</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td align="right">
                                    Designation:
                                </td>
                                <td>
                                    <b>Software Engineer</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td align="right">
                                    Company:
                                </td>
                                <td>
                                    <b>aspdotnet-suresh</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td align="right">
                                    Phone No:
                                </td>
                                <td>
                                    <b>1234567890</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td align="right">
                                    Location:
                                </td>
                                <td align="left">
                                    <b>Hyderabad</b>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </ContentTemplate>
            </ajax:TabPanel>
        </ajax:TabContainer>
    </form>
</body>
</html>
