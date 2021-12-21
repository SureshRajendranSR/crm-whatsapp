<!DOCTYPE html>
<html lang="en" >

<head>

<meta charset="UTF-8">
<title>WhatsApp - Web HTML Template</title>
<link rel="shortcut icon" type="image/x-icon" href="#" />  
<style>
/* ------ GENERAl LAYOUT ------ */
* {
    font-family: 'Roboto', sans-serif;
margin: 0px;
padding: 0px;
         box-sizing: border-box;
}

body {
background: #dbdbdb;
}

.ba-i {
width: 60px;
margin: auto;
}

/* ------ FONTS ------ */
.font-name {
color: #000000;
       font-size: 1em;
       font-weight: inherit;
       padding-bottom: 3px;
}

.font-preview {
color: #444444;
       font-size: 0.9em;
       font-weight: inherit;
}

.font-online {
color: #777777;
       font-size: 0.8em;
       font-weight: inherit;
}

.green-background {
background: #009688;
height: 130px;
width: 100%;
position: fixed;
top: 0;
     z-index: -100;
}

.wrap {
display: '';
/*  height: 500px;  */
margin: auto;
}

/* ------ LEFT SIDE ------ */
.left {
width: 400px;
}

.profile {
width: 100%;
height: 60px;
background: #eeeeee;
            border-right: 1px solid #dbdbdb;
display: flex;
         justify-content: space-between;
}

.profile img {
width: 40px;
height: 40px;
margin: 10px;
        border-radius: 50%;
}

.icons {
color: #777777;
display: flex;
}

.wrap-search {
width: 100%;
height: 45px;
background: #fbfbfb;
display: flex;
}

.search {
width: calc(100% - 20px);
height: 30px;
background: #ffffff;
margin: auto;
border: 1px solid #eeeeee;
        border-radius: 5px;
display: flex;
}

.search i {
widht: 60px;
}

.search i, .wrap-message i {
color: #aaaaaa;
       text-align: center;
}

.input-search {
width: 100%;
border: none;
}

.input-search:focus {
outline: none;
}

.contact-list {
    background-color: #ffffff;
width: 100%;
height: calc(100% - 105px);
        overflow-y: auto;
}

.contact, .active-contact, .new-message-contact {
height: 70px;
        background-color: #ffffff;
display: flex;
}

.contact img, .active-contact img, .new-message-contact img {
width: 50px;
height: 50px;
margin: 10px;
        border-radius: 50%;
}

.active-contact {
    background-color: #ebebeb;
}

.contact:hover, .new-message-contact:hover {
    background-color: #f5f5f5;
}

.new-message-contact {
    font-weight: bold;
}   

.contact-preview {
width: 100%;
height: 70px;
        border-bottom: 1px solid #eeeeee;
display: flex;
overflow: hidden;
}

.contact-text {
height: 40px;
margin: auto 0;
overflow: hidden;
}

.contact-time {
width: 55px;
color: rgba(0,0,0,0.4);
       font-size: 0.8em;
display: flex;
         flex-direction: column;
         justify-content: space-between;
padding: 10px;
         border-bottom: 1px solid #eeeeee;
}

.new-message {
background: #09d261;
            border-radius: 50%;
width: 20px;
height: 20px;
display: flex;
margin: auto;
        flex-direction: column;
color: white;
}

.new-message p {
margin: auto;
}

/* ------ RIGHT SIDE ------ */
.right {
    min-width: calc(100% - 400px);
    background-color: #e5ddd5;
    background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1089577/background.png);
}

.chat-head {
    background-color: #eeeeee;
width: 100%;
height: 60px;
display: flex;
}

.chat-head img {
width: 40px;
height: 40px;
margin: 10px;
        border-radius: 50%;
}

.chat-head i {
color: #aaaaaa;
width: 60px;
margin: auto;
        text-align: center;
}

#close-contact-information {
display: none;
}

.chat-name {
width: 100%;
margin: auto;
}

.wrap-chat {
height: calc(100% - 120px);
display: flex;
}

.chat {
    background-color: #e5ddd5;
    background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1089577/background.png);
    width: 100%;
    padding: 0px 2% 0% 3%;
         padding-top: 7px;
         overflow-y: auto;
}

.information {
width: 100%;
position: relative;
background: #f7f7f7;
display: none;
         flex-direction: column;
overflow: auto;
}

.information div {
background: #ffffff;
padding: 10px;
         margin-bottom: 20px;
}

.information img {
width: 200px;
height: 200px;
margin: 20px auto;
        border-radius: 50%;
float: left;
}

.information h1 {
color: #009688;
       font-size: 14px;
       margin-bottom: 5px;
}

.listGroups {
display: flex;
margin: 0px !important;
}

.listGroups img {
width: 40px;
height: 40px;
margin: 0px 10px 0px 0px;
}

.listGroups p {
margin: auto 0px;
}

/* ------ CHAT ------ */
.chat-bubble {
    border-radius: 7px;
    box-shadow: 0 2px 2px rgba(0,0,0,0.05);
padding: 5px 7px;
width: 350px;
       max-width: 100%;
position: relative;
}

.ba-get {
background: #ffffff;
margin: 0px auto 10px 0px;
}

.ba-post {
background: #dcf8c6;
margin: 0px 0px 10px auto;
}

.your-mouth {
width: 0;
height: 0;
        border-bottom: 10px solid white;
        border-left: 10px solid transparent;
position: absolute;
bottom: 10px;
left: -10px;
}

.my-mouth {
width: 0;
height: 0;
        border-bottom: 10px solid #dcf8c6;
        border-right: 10px solid transparent;
position: absolute;
bottom: 10px;
left: 100%;
}

.content {
margin: 0.5em 0;
        line-height: 120%;
        font-size: 1em;
}

.content img {
width: 100%;
}

.time {
color: rgba(0,0,0,0.4);
       font-size: 0.9em;
       text-align: right;
       margin-top: -10px;
}

.pink {
color: #EE33AA;
}

.green {
color: #44FF66;
}

.orange {
color: #FF8811;
}

.wrap-message {
width: 100%;
height: 60px;
background: #f1f1f1;
display: flex;
}

.message {
width: 100%;
height: 45px;
background: #ffffff;
margin: auto;
border: 1px solid #eeeeee;
        border-radius: 5px;
display: flex;
}

.input-message {
width: 100%;
margin: 0px 10px;
border: none;
}

.input-message:focus {
outline: none;
}

/* ------ SCROLLBAR ------ */

body::-webkit-scrollbar, .contact-list::-webkit-scrollbar, .chat::-webkit-scrollbar, .information::-webkit-scrollbar {
width: 0.4em;
height: 0.4em;
}

body::-webkit-scrollbar-thumb, .contact-list::-webkit-scrollbar-thumb, .chat::-webkit-scrollbar-thumb, .information::-webkit-scrollbar-thumb {
    background-color: rgba(0,0,0,0.2);
}

/* ------ MEDIA QUERIES ------ */
@media (min-width: 1200px) {
    .wrap {
        margin-bottom: 2vh;
        margin-top: 0px;
/* height: calc(98vh - 25px); */
    }
}

@media (max-width: 600px) {
    .wrap {
height: calc(100vh - 0.4em);
    }
}
</style>

<script>
window.console = window.console || function(t) {};
</script>



<script>
if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
}
</script>


</head>

<body translate="no" >


<html lang="en">
   <head>
      <meta charset="UTF-8">
      <title>Title</title>
      <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
      <script src="https://use.fontawesome.com/1c6f725ec5.js"></script>
   </head>
   <body>
      <div class="wrap">
         <section class="right"> 
            <div class="" style="margin-left: 35%;">
                <!--
                <select class="select2" id="ba_whatsapp_target_number">
                    {foreach from=$TARGET_LIST key=number item=label}
                        <option value="{$number}">{$label} </option>
                    {/foreach}
                </select>
                -->
                <input type="hidden" value="{$TARGET_NUMBER}" id="ba_whatsapp_target_number" /> 
            </div>
            <div class="wrap-chat" >
            	<input type="hidden" id="ba-current-page" value=1 /> 
               	<div class="chat" id="ba-message-list" style="height: 400px;">
					{include file="messages.tpl"|@vtemplate_path:'BaWhatsApp'}
               </div>
               <div class="information"></div>
            </div>
            <div class="wrap-message">
               
               <div class="message">
                  <input type="text" id="message_content" class="input-message" placeholder="Enter the content">
               </div>
               <i class="fa fa-paper-plane fa-lg ba-i" id="ba_send_message" style="cursor: pointer;" aria-hidden="true"></i>
               
            </div>
         </section>
      </div>
   </body>
</html>
</body>
</html>