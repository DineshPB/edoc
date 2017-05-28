<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="website_content_page_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentellela Alela! | </title>

    <!-- Bootstrap -->
    <link href="../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    
    <link href="../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    
    <link href="../../vendors/normalize-css/normalize.css" rel="stylesheet" type="text/css" />
    <link href="../../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Ion.RangeSlider -->
    <link href="../../vendors/normalize-css/normalize.css" rel="stylesheet">
    <link href="../../vendors/ion.rangeSlider/css/ion.rangeSlider.css" rel="stylesheet">
    <link href="../../vendors/ion.rangeSlider/css/ion.rangeSlider.skinFlat.css" rel="stylesheet">
    <!-- Bootstrap Colorpicker -->
    <link href="../../vendors/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">

    <link href="../../vendors/cropper/dist/cropper.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../../build/css/custom.min.css" rel="stylesheet">
  </head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div class="calendar-date">
                              <table class="table-condensed">
                                <thead>
                                  <tr>
                                    <th class="prev available"><i class="fa fa-arrow-left icon icon-arrow-left glyphicon glyphicon-arrow-left"></i>
                                    </th>
                                    <th colspan="5" class="month">Mar 2013</th>
                                    <th class="next available"><i class="fa fa-arrow-right icon icon-arrow-right glyphicon glyphicon-arrow-right"></i>
                                    </th>
                                  </tr>
                                  <tr>
                                    <th>Su</th>
                                    <th>Mo</th>
                                    <th>Tu</th>
                                    <th>We</th>
                                    <th>Th</th>
                                    <th>Fr</th>
                                    <th>Sa</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td class="available off" data-title="r0c0">24</td>
                                    <td class="available off" data-title="r0c1">25</td>
                                    <td class="available off" data-title="r0c2">26</td>
                                    <td class="available off" data-title="r0c3">27</td>
                                    <td class="available off" data-title="r0c4">28</td>
                                    <td class="available" data-title="r0c5">1</td>
                                    <td class="available" data-title="r0c6">2</td>
                                  </tr>
                                  <tr>
                                    <td class="available" data-title="r1c0">3</td>
                                    <td class="available" data-title="r1c1">4</td>
                                    <td class="available" data-title="r1c2">5</td>
                                    <td class="available" data-title="r1c3">6</td>
                                    <td class="available" data-title="r1c4">7</td>
                                    <td class="available" data-title="r1c5">8</td>
                                    <td class="available" data-title="r1c6">9</td>
                                  </tr>
                                  <tr>
                                    <td class="available" data-title="r2c0">10</td>
                                    <td class="available" data-title="r2c1">11</td>
                                    <td class="available" data-title="r2c2">12</td>
                                    <td class="available" data-title="r2c3">13</td>
                                    <td class="available" data-title="r2c4">14</td>
                                    <td class="available" data-title="r2c5">15</td>
                                    <td class="available" data-title="r2c6">16</td>
                                  </tr>
                                  <tr>
                                    <td class="available" data-title="r3c0">17</td>
                                    <td class="available active start-date end-date" data-title="r3c1">18</td>
                                    <td class="available" data-title="r3c2">19</td>
                                    <td class="available" data-title="r3c3">20</td>
                                    <td class="available" data-title="r3c4">21</td>
                                    <td class="available" data-title="r3c5">22</td>
                                    <td class="available" data-title="r3c6">23</td>
                                  </tr>
                                  <tr>
                                    <td class="available" data-title="r4c0">24</td>
                                    <td class="available" data-title="r4c1">25</td>
                                    <td class="available" data-title="r4c2">26</td>
                                    <td class="available" data-title="r4c3">27</td>
                                    <td class="available" data-title="r4c4">28</td>
                                    <td class="available" data-title="r4c5">29</td>
                                    <td class="available" data-title="r4c6">30</td>
                                  </tr>
                                  <tr>
                                    <td class="available" data-title="r5c0">31</td>
                                    <td class="available off" data-title="r5c1">1</td>
                                    <td class="available off" data-title="r5c2">2</td>
                                    <td class="available off" data-title="r5c3">3</td>
                                    <td class="available off" data-title="r5c4">4</td>
                                    <td class="available off" data-title="r5c5">5</td>
                                    <td class="available off" data-title="r5c6">6</td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
    </form>
     <!-- bootstrap-daterangepicker -->
    <script src="../../production/js/moment/moment.min.js" type="text/javascript"></script>
    <script src="js/moment/moment.min.js"></script>
    <script src="js/datepicker/daterangepicker.js"></script>
    <script src="../../production/js/datepicker/daterangepicker.js" type="text/javascript"></script>
     <!-- bootstrap-daterangepicker -->
    <script>
        $(document).ready(function () {
            var cb = function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
                $('#reportrange_right span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            };

            var optionSet1 = {
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2012',
                maxDate: '12/31/2015',
                dateLimit: {
                    days: 60
                },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                opens: 'right',
                buttonClasses: ['btn btn-default'],
                applyClass: 'btn-small btn-primary',
                cancelClass: 'btn-small',
                format: 'MM/DD/YYYY',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Clear',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            };

            $('#reportrange_right span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));

            $('#reportrange_right').daterangepicker(optionSet1, cb);

            $('#reportrange_right').on('show.daterangepicker', function () {
                console.log("show event fired");
            });
            $('#reportrange_right').on('hide.daterangepicker', function () {
                console.log("hide event fired");
            });
            $('#reportrange_right').on('apply.daterangepicker', function (ev, picker) {
                console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
            });
            $('#reportrange_right').on('cancel.daterangepicker', function (ev, picker) {
                console.log("cancel event fired");
            });

            $('#options1').click(function () {
                $('#reportrange_right').data('daterangepicker').setOptions(optionSet1, cb);
            });

            $('#options2').click(function () {
                $('#reportrange_right').data('daterangepicker').setOptions(optionSet2, cb);
            });

            $('#destroy').click(function () {
                $('#reportrange_right').data('daterangepicker').remove();
            });

        });
    </script>

    <script>
        $(document).ready(function () {
            var cb = function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            };

            var optionSet1 = {
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2012',
                maxDate: '12/31/2015',
                dateLimit: {
                    days: 60
                },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                opens: 'left',
                buttonClasses: ['btn btn-default'],
                applyClass: 'btn-small btn-primary',
                cancelClass: 'btn-small',
                format: 'MM/DD/YYYY',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Clear',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            };
            $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
            $('#reportrange').daterangepicker(optionSet1, cb);
            $('#reportrange').on('show.daterangepicker', function () {
                console.log("show event fired");
            });
            $('#reportrange').on('hide.daterangepicker', function () {
                console.log("hide event fired");
            });
            $('#reportrange').on('apply.daterangepicker', function (ev, picker) {
                console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
            });
            $('#reportrange').on('cancel.daterangepicker', function (ev, picker) {
                console.log("cancel event fired");
            });
            $('#options1').click(function () {
                $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
            });
            $('#options2').click(function () {
                $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
            });
            $('#destroy').click(function () {
                $('#reportrange').data('daterangepicker').remove();
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $('#single_cal1').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_1"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
            $('#single_cal2').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_2"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
            $('#single_cal3').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_3"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
            $('#single_cal4').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_4"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $('#reservation').daterangepicker(null, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
        });
    </script>
    <!-- /bootstrap-daterangepicker -->
</body>
</html>
