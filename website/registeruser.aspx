<%@ Page Language="VB" AutoEventWireup="false" CodeFile="registeruser.aspx.vb" Inherits="website_registeruser" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>E-Document Creator | </title>
    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="../vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="../vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="../vendors/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="../vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
</head>
<body class="login">
    <div class="container body">
     <form runat="server">
        <div class="main_container" >
            
            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" />
      <%--      <asp:Wizard ID="Wizard1" runat="server" BackColor="#EFF3FB" 
                BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
                <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
                    BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                    HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#284E98" />
                <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
                    ForeColor="White" />
                <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
                <StepStyle Font-Size="0.8em" ForeColor="#333333" />
                <WizardSteps>
                    <asp:WizardStep runat="server" title="Step 1">
                     
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                            First Name <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:TextBox ID="txtFirstName" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                                runat="server" ErrorMessage="*First Name Cannot Be Set as Empty" 
                                                ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                                     
                                
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                            Last Name <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:TextBox ID="txtLastName" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                                runat="server" ErrorMessage="*Last Name Cannot Be Set as Empty" 
                                                ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator>

                                     
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Step 2">
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>--%>
            
            <!-- /top navigation -->
            <!-- page content -->
            <div class="right_col" role="main">
                <div class="">
                    <div class="page-title">
                        <div class="title_left">
                       
                        <h1>E-Document Creator</h1>
                           
                        </div>
                        <div class="title_right">
                            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            Go!</button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>
                                        Registrtion Form <small>Fill up the detail given below!</small></h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a href="SinglePro/index.html">Home</a></li>
                                       
                                        <li><a href="login.aspx">login</a></li>
                                        <li><a href="changepassoword2.aspx">change Password!</a></li>
                                    </ul>
                                    <div class="clearfix">
                                    </div>
                                </div>
                                <div class="x_content">
                                    <br />
                                  <%--  <form id="form2" data-parsley-validate class="form-horizontal form-label-left" runat="server">--%>
                                  
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                            Email <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:TextBox ID="txtemailid" runat="server" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                ErrorMessage="*Please Enter Valid Email Address" 
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]w+)*\.\w+([-.]\+)*" 
                                                ControlToValidate="txtemailid" ForeColor="Red"></asp:RegularExpressionValidator>

                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ErrorMessage="*Email Cannot Be Set as Empty" ControlToValidate="txtemailid" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                            Password<span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:TextBox ID="txtpassword" runat="server" required="required" class="form-control col-md-7 col-xs-12" TextMode="Password"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                ValidationExpression='^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$' 
                                                ErrorMessage="*Password must contain minimum 8 characters,atleast 1 uppercase,1 lowercare,1 number,1 special character" 
                                                ControlToValidate="txtpassword" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                            Confirm Password:<span class="required">*</span>
                                        </label>
                                        
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:TextBox ID="txtconfirmpassword" runat="server" required="required" class="form-control col-md-7 col-xs-12" TextMode="Password"></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                ErrorMessage="*Password do not match"  ControlToValidate="txtconfirmpassword" 
                                                ControlToCompare="txtpassword" ForeColor="Red"></asp:CompareValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$" 
                                                ErrorMessage="Password must contain minimum 8 characters,atleast 1 uppercase,1 lowercare,1 number,1 special character" 
                                                ControlToValidate="txtconfirmpassword" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                            Gender</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <div id="gender" class="btn-group" data-toggle="buttons">
                                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                   
                                                    &nbsp;  &nbsp;<asp:RadioButton 
                                                    ID="Rdomale" Text="Male" runat="server" GroupName="rdogender" 
                                                    ValidationGroup="rdogender" />
                                                </label>
                                                <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                    
                                                 <asp:RadioButton ID="Rdofemale" text="Female" runat="server" 
                                                    GroupName="rdogender" TabIndex="1" ValidationGroup="rdogender" />
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ln_solid">
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                            <asp:Button ID="btnCancle" runat="server" Text="Cancel" class="btn btn-primary" />
                                            <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-success" />
                                        </div>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /page content -->
            <!-- footer content -->
            <footer>
          <div class="clearfix"></div>
        </footer>
            <!-- /footer content -->
        </div></form>
    </div>
    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="js/moment/moment.min.js"></script>
    <script src="js/datepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="../vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="../vendors/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="../vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="../vendors/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="../vendors/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="../vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="../vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="../vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="../vendors/starrr/dist/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script>
        $(document).ready(function () {
            $('#birthday').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_4"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
        });
    </script>
    <!-- /bootstrap-daterangepicker -->
    <!-- bootstrap-wysiwyg -->
    <script>
        $(document).ready(function () {
            function initToolbarBootstrapBindings() {
                var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
              'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
              'Times New Roman', 'Verdana'
            ],
            fontTarget = $('[title=Font]').siblings('.dropdown-menu');
                $.each(fonts, function (idx, fontName) {
                    fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + fontName + '</a></li>'));
                });
                $('a[title]').tooltip({
                    container: 'body'
                });
                $('.dropdown-menu input').click(function () {
                    return false;
                })
            .change(function () {
                $(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
            })
            .keydown('esc', function () {
                this.value = '';
                $(this).change();
            });

                $('[data-role=magic-overlay]').each(function () {
                    var overlay = $(this),
              target = $(overlay.data('target'));
                    overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
                });

                if ("onwebkitspeechchange" in document.createElement("input")) {
                    var editorOffset = $('#editor').offset();

                    $('.voiceBtn').css('position', 'absolute').offset({
                        top: editorOffset.top,
                        left: editorOffset.left + $('#editor').innerWidth() - 35
                    });
                } else {
                    $('.voiceBtn').hide();
                }
            }

            function showErrorAlert(reason, detail) {
                var msg = '';
                if (reason === 'unsupported-file-type') {
                    msg = "Unsupported format " + detail;
                } else {
                    console.log("error uploading file", reason, detail);
                }
                $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
            '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
            }

            initToolbarBootstrapBindings();

            $('#editor').wysiwyg({
                fileUploadError: showErrorAlert
            });

            window.prettyPrint;
            prettyPrint();
        });
    </script>
    <!-- /bootstrap-wysiwyg -->
    <!-- Select2 -->
    <script>
        $(document).ready(function () {
            $(".select2_single").select2({
                placeholder: "Select a state",
                allowClear: true
            });
            $(".select2_group").select2({});
            $(".select2_multiple").select2({
                maximumSelectionLength: 4,
                placeholder: "With Max Selection limit 4",
                allowClear: true
            });
        });
    </script>
    <!-- /Select2 -->
    <!-- jQuery Tags Input -->
    <script>
        function onAddTag(tag) {
            alert("Added a tag: " + tag);
        }

        function onRemoveTag(tag) {
            alert("Removed a tag: " + tag);
        }

        function onChangeTag(input, tag) {
            alert("Changed a tag: " + tag);
        }

        $(document).ready(function () {
            $('#tags_1').tagsInput({
                width: 'auto'
            });
        });
    </script>
    <!-- /jQuery Tags Input -->
    <!-- Parsley -->
    <script>
        $(document).ready(function () {
            $.listen('parsley:field:validate', function () {
                validateFront();
            });
            $('#demo-form .btn').on('click', function () {
                $('#demo-form').parsley().validate();
                validateFront();
            });
            var validateFront = function () {
                if (true === $('#demo-form').parsley().isValid()) {
                    $('.bs-callout-info').removeClass('hidden');
                    $('.bs-callout-warning').addClass('hidden');
                } else {
                    $('.bs-callout-info').addClass('hidden');
                    $('.bs-callout-warning').removeClass('hidden');
                }
            };
        });

        $(document).ready(function () {
            $.listen('parsley:field:validate', function () {
                validateFront();
            });
            $('#demo-form2 .btn').on('click', function () {
                $('#demo-form2').parsley().validate();
                validateFront();
            });
            var validateFront = function () {
                if (true === $('#demo-form2').parsley().isValid()) {
                    $('.bs-callout-info').removeClass('hidden');
                    $('.bs-callout-warning').addClass('hidden');
                } else {
                    $('.bs-callout-info').addClass('hidden');
                    $('.bs-callout-warning').removeClass('hidden');
                }
            };
        });
        try {
            hljs.initHighlightingOnLoad();
        } catch (err) { }
    </script>
    <!-- /Parsley -->
    <!-- Autosize -->
    <script>
        $(document).ready(function () {
            autosize($('.resizable_textarea'));
        });
    </script>
    <!-- /Autosize -->
    <!-- jQuery autocomplete -->
    <script>
        $(document).ready(function () {
            var countries = { AD: "Andorra", A2: "Andorra Test", AE: "United Arab Emirates", AF: "Afghanistan", AG: "Antigua and Barbuda", AI: "Anguilla", AL: "Albania", AM: "Armenia", AN: "Netherlands Antilles", AO: "Angola", AQ: "Antarctica", AR: "Argentina", AS: "American Samoa", AT: "Austria", AU: "Australia", AW: "Aruba", AX: "Åland Islands", AZ: "Azerbaijan", BA: "Bosnia and Herzegovina", BB: "Barbados", BD: "Bangladesh", BE: "Belgium", BF: "Burkina Faso", BG: "Bulgaria", BH: "Bahrain", BI: "Burundi", BJ: "Benin", BL: "Saint Barthélemy", BM: "Bermuda", BN: "Brunei", BO: "Bolivia", BQ: "British Antarctic Territory", BR: "Brazil", BS: "Bahamas", BT: "Bhutan", BV: "Bouvet Island", BW: "Botswana", BY: "Belarus", BZ: "Belize", CA: "Canada", CC: "Cocos [Keeling] Islands", CD: "Congo - Kinshasa", CF: "Central African Republic", CG: "Congo - Brazzaville", CH: "Switzerland", CI: "Côte d’Ivoire", CK: "Cook Islands", CL: "Chile", CM: "Cameroon", CN: "China", CO: "Colombia", CR: "Costa Rica", CS: "Serbia and Montenegro", CT: "Canton and Enderbury Islands", CU: "Cuba", CV: "Cape Verde", CX: "Christmas Island", CY: "Cyprus", CZ: "Czech Republic", DD: "East Germany", DE: "Germany", DJ: "Djibouti", DK: "Denmark", DM: "Dominica", DO: "Dominican Republic", DZ: "Algeria", EC: "Ecuador", EE: "Estonia", EG: "Egypt", EH: "Western Sahara", ER: "Eritrea", ES: "Spain", ET: "Ethiopia", FI: "Finland", FJ: "Fiji", FK: "Falkland Islands", FM: "Micronesia", FO: "Faroe Islands", FQ: "French Southern and Antarctic Territories", FR: "France", FX: "Metropolitan France", GA: "Gabon", GB: "United Kingdom", GD: "Grenada", GE: "Georgia", GF: "French Guiana", GG: "Guernsey", GH: "Ghana", GI: "Gibraltar", GL: "Greenland", GM: "Gambia", GN: "Guinea", GP: "Guadeloupe", GQ: "Equatorial Guinea", GR: "Greece", GS: "South Georgia and the South Sandwich Islands", GT: "Guatemala", GU: "Guam", GW: "Guinea-Bissau", GY: "Guyana", HK: "Hong Kong SAR China", HM: "Heard Island and McDonald Islands", HN: "Honduras", HR: "Croatia", HT: "Haiti", HU: "Hungary", ID: "Indonesia", IE: "Ireland", IL: "Israel", IM: "Isle of Man", IN: "India", IO: "British Indian Ocean Territory", IQ: "Iraq", IR: "Iran", IS: "Iceland", IT: "Italy", JE: "Jersey", JM: "Jamaica", JO: "Jordan", JP: "Japan", JT: "Johnston Island", KE: "Kenya", KG: "Kyrgyzstan", KH: "Cambodia", KI: "Kiribati", KM: "Comoros", KN: "Saint Kitts and Nevis", KP: "North Korea", KR: "South Korea", KW: "Kuwait", KY: "Cayman Islands", KZ: "Kazakhstan", LA: "Laos", LB: "Lebanon", LC: "Saint Lucia", LI: "Liechtenstein", LK: "Sri Lanka", LR: "Liberia", LS: "Lesotho", LT: "Lithuania", LU: "Luxembourg", LV: "Latvia", LY: "Libya", MA: "Morocco", MC: "Monaco", MD: "Moldova", ME: "Montenegro", MF: "Saint Martin", MG: "Madagascar", MH: "Marshall Islands", MI: "Midway Islands", MK: "Macedonia", ML: "Mali", MM: "Myanmar [Burma]", MN: "Mongolia", MO: "Macau SAR China", MP: "Northern Mariana Islands", MQ: "Martinique", MR: "Mauritania", MS: "Montserrat", MT: "Malta", MU: "Mauritius", MV: "Maldives", MW: "Malawi", MX: "Mexico", MY: "Malaysia", MZ: "Mozambique", NA: "Namibia", NC: "New Caledonia", NE: "Niger", NF: "Norfolk Island", NG: "Nigeria", NI: "Nicaragua", NL: "Netherlands", NO: "Norway", NP: "Nepal", NQ: "Dronning Maud Land", NR: "Nauru", NT: "Neutral Zone", NU: "Niue", NZ: "New Zealand", OM: "Oman", PA: "Panama", PC: "Pacific Islands Trust Territory", PE: "Peru", PF: "French Polynesia", PG: "Papua New Guinea", PH: "Philippines", PK: "Pakistan", PL: "Poland", PM: "Saint Pierre and Miquelon", PN: "Pitcairn Islands", PR: "Puerto Rico", PS: "Palestinian Territories", PT: "Portugal", PU: "U.S. Miscellaneous Pacific Islands", PW: "Palau", PY: "Paraguay", PZ: "Panama Canal Zone", QA: "Qatar", RE: "Réunion", RO: "Romania", RS: "Serbia", RU: "Russia", RW: "Rwanda", SA: "Saudi Arabia", SB: "Solomon Islands", SC: "Seychelles", SD: "Sudan", SE: "Sweden", SG: "Singapore", SH: "Saint Helena", SI: "Slovenia", SJ: "Svalbard and Jan Mayen", SK: "Slovakia", SL: "Sierra Leone", SM: "San Marino", SN: "Senegal", SO: "Somalia", SR: "Suriname", ST: "São Tomé and Príncipe", SU: "Union of Soviet Socialist Republics", SV: "El Salvador", SY: "Syria", SZ: "Swaziland", TC: "Turks and Caicos Islands", TD: "Chad", TF: "French Southern Territories", TG: "Togo", TH: "Thailand", TJ: "Tajikistan", TK: "Tokelau", TL: "Timor-Leste", TM: "Turkmenistan", TN: "Tunisia", TO: "Tonga", TR: "Turkey", TT: "Trinidad and Tobago", TV: "Tuvalu", TW: "Taiwan", TZ: "Tanzania", UA: "Ukraine", UG: "Uganda", UM: "U.S. Minor Outlying Islands", US: "United States", UY: "Uruguay", UZ: "Uzbekistan", VA: "Vatican City", VC: "Saint Vincent and the Grenadines", VD: "North Vietnam", VE: "Venezuela", VG: "British Virgin Islands", VI: "U.S. Virgin Islands", VN: "Vietnam", VU: "Vanuatu", WF: "Wallis and Futuna", WK: "Wake Island", WS: "Samoa", YD: "People's Democratic Republic of Yemen", YE: "Yemen", YT: "Mayotte", ZA: "South Africa", ZM: "Zambia", ZW: "Zimbabwe", ZZ: "Unknown or Invalid Region" };

            var countriesArray = $.map(countries, function (value, key) {
                return {
                    value: value,
                    data: key
                };
            });

            // initialize autocomplete with custom appendTo
            $('#autocomplete-custom-append').autocomplete({
                lookup: countriesArray
            });
        });
    </script>
    <!-- /jQuery autocomplete -->
    <!-- Starrr -->
    <script>
        $(document).ready(function () {
            $(".stars").starrr();

            $('.stars-existing').starrr({
                rating: 4
            });

            $('.stars').on('starrr:change', function (e, value) {
                $('.stars-count').html(value);
            });

            $('.stars-existing').on('starrr:change', function (e, value) {
                $('.stars-count-existing').html(value);
            });
        });
    </script>
    <!-- /Starrr -->
</body>
</html>
