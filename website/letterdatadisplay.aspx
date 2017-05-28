<%@ Page Language="VB" AutoEventWireup="false" EnableEventValidation="false" CodeFile="letterdatadisplay.aspx.vb"
    Inherits="website_letterdatadisplay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 842px; width: 928px; /* to centre page on screen*/
        margin-left: auto; margin-right: auto;">
    <form id="form1" runat="server">
    <div>
    <asp:Button ID="Button2" runat="server" Text="pdf" />
    </div>
    <div id="toinfo" align="left">
        <h1>
            <asp:Literal ID="nodata" runat="server"></asp:Literal></h1>
        <table>
            <tr>
                To,
                <td>
                    <asp:Literal ID="namel" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="address1l" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="address2l" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="address3l" runat="server"></asp:Literal>
            </tr>
        </table>
    </div>
    <div align="left">
        <br />
        <table>
            <tr>
                <td>
                    <asp:Literal ID="datel" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="subjectl" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="salutation" runat="server"></asp:Literal>
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
                </td>
            </tr>
            <tr>
                <td>
                    <p>
                        <asp:Literal ID="firstparal" runat="server"></asp:Literal>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <p>
                        <asp:Literal ID="secondpara" runat="server"></asp:Literal>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <p>
                        <asp:Literal ID="thirdpara" runat="server"></asp:Literal></p>
                </td>
            </tr>
        </table>
    </div>
    <div id="Div1" align="left">
        <table>
            <tr>
                Your Sincerely,
                <td>
                    <asp:Literal ID="sendernamel" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="phonenumberl" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
