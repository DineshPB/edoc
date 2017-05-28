<%@ Page Language="VB" AutoEventWireup="false" CodeFile="resumetemp.aspx.vb" Inherits="website_resume_resumetemp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
#doc2{width:73.076em;*width:71.25em;}#doc,#doc2,#doc3,#doc4,.yui-t1,.yui-t2,.yui-t3,.yui-t4,.yui-t5,.yui-t6,.yui-t7{margin:auto;text-align:left;width:57.69em;*width:56.25em;}#hd,#bd,#ft,.yui-g,.yui-gb,.yui-gc,.yui-gd,.yui-ge,.yui-gf{zoom:1;}
#hd h1 { font-size: 48px; text-transform: uppercase; letter-spacing: 3px; }
h3, h4 { color: #333; }
h1
{
    font-family:Comic Sans MS;
    color:Aqua;
    text-transform:capitalize;
}
h2
{
    font-family:Times New Roman;
    color:Green;
}
h3
{
    font-family:Calibri;
    color:Lime;
   }


    
h1, h2,h3,h4,h5,h6{font-size:100%;font-weight:normal;}
#hd h2 { text-transform: uppercase; letter-spacing: 2px; }
h2 { font-size: 152% }
.contact-info { margin-top: 7px; }
h3, h4 { font-size: 122%; }

a#pdf { display: block; float: left; background: #666; color: white; padding: 6px 50px 6px 12px; margin-bottom: 6px; text-decoration: none;  }
a { color: #990003 }
#yui-main .yui-b{float:none;width:auto;}#yui-main .yui-b{position:static;}.yui-b{_position:static;}.yui-b{position:relative;}
.yui-gf { margin-bottom: 2em; padding-bottom: 2em; border-bottom: 1px solid #ccc; }

p.enlarge { font-size: 144%;
             padding-right: 6.5em;
              line-height: 24px;
              
            }
p  
{
    font-size: 100%; 
    line-height: 18px; 
    padding-right: 3em; 
    color:Lime;
    font-family:Calibri;
    
}
.talent { width: 32%; float: left }
li { line-height: 24px; border-bottom: 1px solid #ccc; }
li{list-style:none;}

.last { border: none; }
.last { border-bottom: 0 }


.job { position: relative; margin-bottom: 1em; padding-bottom: 1em; border-bottom: 1px solid #ccc; }
strong { font-weight: bold; }
address,caption,cite,code,dfn,em,strong,th,var,optgroup{font-style:inherit;font-weight:inherit;}
#ft p { margin-bottom: 0; text-align: center;   }

        .style1
        {
            margin: 0;
            padding: 0;
        }
       h4
       {
           color:Lime;
           font-family:Calibri;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="data" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="show" />
        <asp:Label ID="lblnodata" runat="server"></asp:Label>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
        <title>Jonathan Doe | Web Designer, Director | name@yourdomain.com</title>
        <meta content="text/html; charset=utf-8" http-equiv="content-type" />
        <meta content="" name="keywords" />
        <meta content="" name="description" />
        <link href="http://yui.yahooapis.com/2.7.0/build/reset-fonts-grids/reset-fonts-grids.css"
            media="all" rel="stylesheet" type="text/css" />
        <link href="resume.css" media="all" rel="stylesheet" type="text/css" />
        <div id="doc2" class="style1">
            <div id="inner">
                <div id="hd">
                    <div class="style1">
                        <div class="style1">
                            <h1 class="style1">
                                <asp:Literal ID="usernamel" runat="server" Mode="PassThrough"></asp:Literal>
                            </h1>
                            <h2 class="style1">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Literal ID="postionl" runat="server" Mode="PassThrough"></asp:Literal>
                            </h2>
                            <div class="style1">
                                <h3 class="style1">
                                    <asp:Literal ID="addressl" runat="server" Mode="PassThrough"></asp:Literal>
                                </h3>
                                <h3 class="style1">
                                    <asp:Literal ID="emailidl" runat="server" Mode="PassThrough"></asp:Literal>
                                </h3>
                                <h3 class="style1">
                                    <asp:Literal ID="contactnol" runat="server" Mode="PassThrough"></asp:Literal>
                                    &nbsp;</h3>
                            </div>
                            <!--// .contact-info -->
                        </div>
                    </div>
                    <!--// .yui-gc -->
                </div>
                <div class="style1">
                    <div class="style1">
                        <h2 class="style1">
                            Profile:</h2>
                    </div>
                    <div class="style1">
                        <div class="style1">
                            <h2 class="style1">
                            </h2>
                            <p class="style1">
                                <asp:Literal ID="profilel" runat="server" Mode="PassThrough"></asp:Literal>
                            </p>
                        </div>
                    </div>
                </div>
                <!--// hd -->
                <div id="bd">
                    <div id="yui-main">
                        <div class="style1">
                            <div class="style1">
                                <div class="style1">
                                    <h2 class="style1">
                                        Education:</h2>
                                </div>
                                <div class="style1">
                                    <p class="style1">
                                        <asp:Literal ID="educationl" runat="server" Mode="PassThrough"></asp:Literal>
                                    </p>
                                </div>
                                <!--// hd -->
                            </div>
                            <!--// .yui-gf -->
                            <div class="style1">
                                <div class="style1">
                                    <h2 class="style1">
                                        Qualifications</h2>
                                </div>
                                <div class="style1">
                                    <div class="style1">
                                        <h2 class="style1">
                                        </h2>
                                        <p class="style1">
                                            <asp:Literal ID="qualificationl" runat="server" Mode="PassThrough"></asp:Literal>
                                        </p>
                                         <!--// yui-main -->
                                    </div>
                                    <div class="style1">
                                        <h2 class="style1">
                                            Interests:</h2>
                                        <p class="style1">
                                            <asp:Literal ID="interestsl" runat="server" Mode="PassThrough"></asp:Literal>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!--// .yui-gf -->
                            <div class="style1">
                                <div class="style1">
                                    <h2 class="style1">
                                        Work Expereince:</h2>
                                    <p class="style1">
                                        <asp:Literal ID="workexperiencel" runat="server" Mode="PassThrough"></asp:Literal>
                                </div>
                            </div>
                            <!--// .yui-gf-->
                            <div class="style1">
                                <div class="style1">
                                    <h2 class="style1">
                                        References:</h2>
                                </div>
                                <!--// .yui-u -->
                                <div class="style1">
                                    <div class="style1">
                                        <h4 class="style1">
                                            <asp:Literal ID="referncesl" runat="server" Mode="PassThrough"></asp:Literal>
                                        </h4>
                                    </div>
                                </div>
                            </div>
                            <!--// .yui-gf -->
                        </div>
                        <!--// .yui-b -->
                    </div>
                    <!--// yui-main -->
                </div>
                <!--// bd -->
                <div id="ft">
                    <p class="style1">
                </div>
                <!--// footer -->
            </div>
            <!-- // inner -->
        </div>
        <!--// doc -->
    </div>
    </form>
</body>
</html>
