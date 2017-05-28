<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ckeditordemo.aspx.vb" Inherits="website_ckeditordemo" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="adjoined-bottom">
        <div class="grid-container">
            <div class="grid-width-100">
                <div id="editor">
                    &nbsp;<CKEditor:CKEditorControl ID="CKEditor1" runat="server" Height="200" Toolbar="Full"></CKEditor:CKEditorControl>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
