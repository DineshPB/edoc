<%@ Page Language="VB" AutoEventWireup="false" CodeFile="messagebox.aspx.vb" Inherits="website_chat_messagebox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="JScript.js" type="text/javascript"></script>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="chat_window">
        <div class="top_menu">
            <div class="buttons">
                <div class="button close">
                </div>
                <div class="button minimize">
                </div>
                <div class="button maximize">
                </div>
            </div>
            <div class="title">
                Chat</div>
        </div>
         <div class="messages message">
        <ul class="left avatar text_wrapper">
       this is left
        </ul>
       </div>
        <div class="bottom_wrapper clearfix">
            <div class="message_input_wrapper appeared">
                <input class="message_input" href="#" name="input" type="text" placeholder="Type your message here..." /></div>
            <div class="send_message">
                <div class="icon">
                </div>
                <div class="text">
                    Send</div>
            </div>
        </div>
    </div>
    <div class="message_template">
        <li class="message">
            <div class="avatar">
            </div>
            <div class="text_wrapper">
                <div class="text">
                </div>
            </div>
        </li>
    </div>
    </form>
    <script>
        $(#input).(function () {
            var Message;
            Message = function (arg) {
                this.text = arg.text, this.message_side = arg.message_side;
                this.draw = function (_this) {
                    return function () {
                        var $message;
                        $message = $($('.message_template').clone().html());
                        $message.addClass(_this.message_side).find('.text').html(_this.text);
                        $('.messages').append($message);
                        return setTimeout(function () {
                            return $message.addClass('appeared');
                        }, 0);
                    };
                } (this);
                return this;
            };
            $(#input).click(function () {
                var getMessageText, message_side, sendMessage;
                message_side = 'right';
                getMessageText = function () {
                    var $message_input;
                    $message_input = $('.message_input');
                    return $message_input.val();
                };
                sendMessage = function (text) {
                    var $messages, message;
                    if (text.trim() === '') {
                        return;
                    }
                    $('.message_input').val('');
                    $messages = $('.messages');
                    message_side = message_side === 'left' ? 'right' : 'left';
                    message = new Message({
                        text: text,
                        message_side: message_side
                    });
                    message.draw();
                    return $messages.animate({ scrollTop: $messages.prop('scrollHeight') }, 300);
                };
                $('.send_message').click(function (e) {
                    return sendMessage(getMessageText());
                });
                $('.message_input').keyup(function (e) {
                    if (e.which === 13) {
                        return sendMessage(getMessageText());
                    }
                });
                sendMessage('Hello Philip! :)');
                setTimeout(function () {
                    return sendMessage('Hi Sandy! How are you?');
                }, 1000);
                return setTimeout(function () {
                    return sendMessage('I\'m fine, thank you!');
                }, 2000);
            });
        } .call(this));
    </script>
</body>
</html>
