 


  <script src="<?php echo $main_dir; ?>template/jquery-.js" type="text/javascript"></script>

<script src="<?php echo $main_dir; ?>template/jquery-ui.js" type="text/javascript"></script>

<script>(function ( $ ) {   
    //this is soooo tacky      


$.fn.loadingtext = function(text = "LOADING",dot_nums = 3){
  

//this.html("LOADING");

var agent = this;
return this.each(function(){
 $this = $(this);
dots($this);

});  
function dots($this){       x = 0;    dots = "";
setInterval(function(){      for(i = 0;i <=x; i++){
dots = (x > 3) ? "." : "." + dots;  
};    if(dots.length > dot_nums){dots = "";}
$this.html(text + dots);
},200);
} 

} 
 $.ltrim = function( str ) {
return str.replace( /^\s+/, "" );
};
$.rtrim = function( str ) {
return str.replace( /\s+$/, "" );
};
}( jQuery ));     //my first jquery function



</script> 
 
<script type="text/javascript">


function microtime(get_as_float)
{
var unixtime_ms = new Date().getTime();
    var sec = parseInt(unixtime_ms / 1000);
    return (get_as_float) ? unixtime_ms/1000 : sec + (unixtime_ms - (sec * 1000))/1000 ;
}

$("head").ready(function(){   //gets executed faster than $(document).ready()
//get current timezone of user

//no background image on last child





$(".quick_links a:last-child").css("background-image","none");


$("#user_menu .uplink").append("<img src='<?php echo $image_dir; ?>9.png' alt='\(Options\)'>");
$(".posts_t1:first").addClass("nobg");
$(".profile_main,h3.content_q").wrapInner("<div class='part_1'><div class='part_2'><div class='part_3'></div></div></div>"); //everything that needs 3-part backgrounds

//lazy dropdowns - also I have to work on a border on .right later
//started over, there's no shame in doing it
//this time I hope to make it even more fluid, making a parent span element the trigger to open the dropdown box
//lol it actually worked
//can't have margins inbetween dropdown boxes and their respective menus, otherwise it'll trigger the mouseleave. span.drop's encapsulation in the area space is limited to objects that are connected, and margins separate the connection.
$("span.drop").each(function(){

$(this).on({'mouseover':function(){
var nina = $(this).find(".uplink");
var nina2 = nina.offset().left;
var nina3 = nina.offset().top + nina.height();
$(this).find(".dropdown_content").attr("style","left: "+nina2+"px; top: "+nina3+"px;display:block;position:absolute");



}, 'mouseleave':function(){
$(this).find(".dropdown_content").attr("style","display:none");
if($(this).is("#notifs_drop")){                                           
$.get("<?php echo $main_dir; ?>template/simcheck.php",{"nm_time":"notifs","action":"clearnotifs"},function(data){if(data.notifs_left > 0){$("#notifs_bar .spacer .note").html("("+data.notifs_left+" new)");

}else{

$("#notifs_bar .spacer .note").empty();

zen3 = $("title").html();
zen3 = zen3.replace(/[\050]([0-9]{1,3})[\051][ ](.+)/,"$2");
$("title").html(zen3);


}},"json");
}
}

})
});


/*fix this shit starting here*/



$("#title_trigger").next("textarea").hide().end().on(
'focus',function(){
if($(this).next("textarea").css("display") == "none"){
$(this).next("textarea").toggle("400", function(){
$(this).attr("style","display:block");
});     }
}).next("textarea").on('blur',function(){
if($(this).val() == $(this).prop("defaultValue") || $(this).val().length == "0"){
$(this).toggle("400");
}
});


//a whitespace, just for design's sake
$("#user_menu .left,#user_menu .right").each(function(){
if($(this).is(".left:first")){ //left will probably always be the first div but still
$(this).css("border-right","1px solid #26303F");
if($(this).next("div").is(":not('.left')") || $(this).is(":only-child")){
$(this).after("<div class='left boxxy'>&nbsp;</div>");
$(this).next("div.left").css("border-left","1px solid #38475D");
}  
/* if($(this).is(:first)){
$(this).css()
}  */
}
if($(this).is(".right:last")){
$(this).css("border-left","1px solid #38475D");
if($(this).prev("div").is(":not('.right')") || $(this).is(":only-child")){
$(this).prev("<div class='right'>&nbsp;</div>");
$(this).prev("div.right").css("border-left","1px solid #26303F");
}  
}

if($(this).is(".left:not(':first')")){
$(this).css("border-left","1px solid #38475D");
if($(this).is(":not('.boxxy')")){
if($(this).parent().is("span.drop")){
$(this).parent().prev().find(".boxxy").detach();
}

}
}


});    $("#user_menu .left,#user_menu .right,#user_menu .dropdown_content,#left1 div.box").wrapInner("<div class='spacer' />");

                                      
                                                  




$("body").on('focus','.flick',function(){
if($(this).val()==$(this).prop("defaultValue")){
$(this).attr("extra",$(this).val()).val("");       
}}).on('blur','.flick',function(){if($(this).val().length == 0){
$(this).val($(this).prop("defaultValue"));
} }).on('change','.flick',function(){if($(this).hasClass("named") && ($(this).val().length == 0 || $(this).val()==$(this).prop("defaultValue"))){$(this).removeClass("named")}else{$(this).addClass("named")}
if($(this).val().length == 0){
$(this).val($(this).prop("defaultValue")); //had to change it to this for textareas
}}).on('keyup','.flick',function(event){             
<?php if(isset($_SESSION['login_q']) && compare_dz($logged_dt['password'],$_SESSION['salt_q'])): ?>  



<?php if(count($_GET) == 1): ?>

if($(this).hasClass("school_search")){    


//I need to make the wait a certain amount of time after a person is done typing before displaying results
//In this case i'll set it to 3/4 of a second
//seems like there's already a jquery function for this but im not sure                
//or I could have just nulled the settimeout function before the last time it was executed
    event.stopPropagation();    
    if($(this).next().is("div")){   // $(this).next("#spark").html($(this).val());         
 $(this).next("div").load("<?php echo $main_dir; ?>template/simcheck.php?action=school_search&criteria="+encodeURIComponent($(this).parent().prev().text())+"&search_q=" +encodeURIComponent($(this).val()));


    }else{
    $(this).after("<div></div>");    }


   

 }
 <?php endif; ?> <!-- end count($_GET) conditional -->    
 
 
   
 
 
   <?php endif; ?>
//add em'
});




/*
$(".flick").each(function(){



$(this).on('focus', function(){
if($(this).val()==$(this).prop("defaultValue")){
$(this).attr("extra",$(this).val()).val("");       
}

}).blur(function(){if($(this).val().length == 0){
$(this).val($(this).prop("defaultValue"));
} }).change(function(){if($(this).hasClass("named") && ($(this).val().length == 0 || $(this).val()==$(this).prop("defaultValue"))){$(this).removeClass("named")}else{$(this).addClass("named")}
if($(this).val().length == 0){
$(this).val($(this).prop("defaultValue")); //had to change it to this for textareas
}
 //yup, change covers more than blur
});     
});  */                  
$("#first1").attr("extra",$("#first1").height()).addClass("lolbuffer").animate({height:$("#first1").attr('extra')},2200).removeClass("lolbuffer");
$("#close_button1").click(function(event){event.preventDefault();
$(this).parents("td#left1 div").detach();});  
 

$("span.signup input[type=text]").each(function(){
$(this).attr("title", " ");
});
  
$("body").on('click',"a.comment_opts",function(event){
event.preventDefault();
if($(this).parent().has("form").length){ $(this).parent().find("form").eq(0).detach();}else{
$("a#"+this.name).parent().append("<form action='<?php echo $main_dir; ?>index.php?direct=new_post' method='POST'><input type='hidden' value='<?php $thread_id = isset($thread_data['postid']) ? $thread_data['postid'] : '08676'; echo $thread_id; ?>' name='thread_id'><input type='hidden' value='Comments' name='tcha1'><input value='"+ $(this).parent('.opts_block').attr('alt') +"' name='parent_comment' type='hidden'><textarea name='tcha2' class='largeform flick'><?php echo $nx['24'] ?></textarea><input type='submit' value='<?php echo $nx['25'] ?>' class='comment_opts'>");
}



}
); 

$("input[type=checkbox]").each(function(){
$(this).before("<button class='dc'>").addClass("clear");

});  

$("button.dc").each(function(){     //better-looking checkboxes
if($(this).next("input").is(":checked")){$(this).addClass("a2")}else{$(this).addClass("a1")}
if($(this).next("input[id]")){
$(this).attr("id","axe1" + $(this).next("input").attr("id"))
}
 //check initial checkbox value
$(this).click(function(mod){      mod.preventDefault();
if($(this).hasClass("a1") && $(this).next("input").prop("checked",false)){$(this).removeClass("a1").addClass("a2"); $(this).next("input").prop("checked",true)}else{$(this).removeClass("a2").addClass("a1"); $(this).next("input").prop("checked",false)}
});
});


<?php if(isset($_SESSION['login_q'])): ?>


$("input[name='sg_name']").tooltip({position: { my: "left+10 center", at: "right center-1" }, content: "<span id='checkn1'>We just need a first and last name.</span>"});

function load_replies(user_in_call,append_last){ 

zing = (typeof zing === "undefined" && typeof user_in_call == "string") ? user_in_call : zing;

$.get("<?php echo $main_dir; ?>template/simcheck.php",{"action":"chat_with_user","user":zing,"box_action":"open"},function(chat_sync){     //start em' here
                                                           
if(chat_sync.message == "success"){ 
//connection does exist            


                                             
                                
if(typeof chat_sync.messages === "object"){


for(i = 0;i <= chat_sync.messages.length - 1;i++){
message = chat_sync.messages[i].content; 
user = chat_sync.messages[i].bywhom; 
postid = chat_sync.messages[i].postid;
j = i -1;  
                                 
r_format = ((j < 0 && i == 0) || (i > 0 && chat_sync.messages[j].bywhom != user)) ? "<div>"+user+"</div><p num='"+postid+"'>"+message+"</p>" : "<p num='"+postid+"'>"+message+"</p>"; //check whether previous user was the same one so I won't have to spell the username for each reply
//count the very first message

messages_p = (typeof messages_p === "undefined") ? r_format : messages_p + r_format;   

}
}else{                                  
messages_p = "<p><em>" + chat_sync.messages + "</em></p>";  //no messages in conversation yet
}


if(typeof append_last !== "undefined" && append_last == "reload"){ //reload posts after the user replies to a conversation box

$(".chat-b[ref='" + chat_sync.user + "'] .spacer .chat_box").empty().html(messages_p);

}

chat_box = "<div class='box chat-b' ref='" + chat_sync.user + "'><div class='spacer'><h3><?php echo $nx['40']; ?>" + chat_sync.user + "</h3><div class='chat_box'>"+messages_p+"</div><div class='chat_panel'><textarea></textarea></div><a class='prompt button_samp rad chat-buttons' href='submit-chat-msg'>SUBMIT</a><a class='prompt button_samp rad chat-buttons' href='close-chat'>Close</a></div></div></div>";
if($(".chat-b[ref='"+chat_sync.user+"']").length < 1){ //check to see that it hasn't existed yet
$("#chat_list").before(chat_box);
}
zen = $(".chat-b[ref='" + chat_sync.user + "'] .spacer .chat_box").prop("scrollHeight");
$(".chat-b[ref='" + chat_sync.user + "'] .spacer .chat_box").scrollTop(zen);



} //end "success"ful message
},"json");  //end get_tabbed_users get switch
delete zing;    

}


<?php require_once($main_dir. "template/autorelays.js");endif; ?> 


<?php if(preg_match("#profile[=](.+)$#",extraurl())){require_once($main_dir. "template/profile_sync.js");} ?> 

             var $black_layer = ["<div id='black_overlay'><div id='widthfix'>","</div></div>"];  

 
 
$("body").on('change', "select.largeform:has(.current)", function(){
if($(this).next().attr("disabled") !== undefined){
$(this).next().removeAttr("disabled");
}else{
$(this).next().attr("disabled","disabled").val("").trigger("change");
}
});     
      
                  
$("body").on('click',".prompt",function(event){event.preventDefault();       //dynamic server interaction with a click



<?php if(isset($_SESSION['login_q'])): ?>    //IT'S HERE


if($(this).attr("href") == "sg_scha"){

if($(this).attr("sg").length){
$.get("<?php echo $main_dir; ?>template/simcheck.php",{"action":"sg_scha","sg":$(this).attr("sg")}).done(function(message){

alert(message);
});
}

}



if(/^chat-with-user[:]/.test($(this).attr("href"))){
zing = $(this).attr("href").replace(/^chat-with-user:(.+)$/,"$1");

if($(".chat-b").length <= 5){

load_replies();

} //end check on number of tabs
else{//alert if too many tabs
//alternatively, I could have just checked the number of chat boxes on... :/
alert("You have too many chat tabs on. Please close at least one of them");
}




delete zing;
}


if($(this).attr("href") == "submit-chat-msg"){                 //submit a chat message
//it's as good as that

$.post("<?php echo $main_dir; ?>template/simcheck.php?action=submit-chat-msg",{"towhom":$(this).parent().parent().attr("ref"),"message":$(this).parent().find(".chat_panel textarea").val()});
$(this).parent().find(".chat_panel textarea").val("");
load_replies($(this).parent().parent().attr("ref"),"reload");
}


if($(this).attr("value") == "SEARCH SCHOOL"){  
$values = [[$(this).prev("input").prop("defaultValue"),$(this).prev("input").val()],[$(this).prev().prev("input").prop("defaultValue"),$(this).prev().prev("input").val()]]; 
$zenx = [($values[0][0] == $values[0][1]) ? " " : $values[0][1],($values[1][0] == $values[1][1]) ? " " : $values[1][1]];
  $(this).after(function(){if($(this).next().is("div") == true){return false;}else{return "<div id='school_search' class='contentbox'>Loading...</div>"}});
  $(this).next("div").html("Loading...").addClass("contentbox");
$.get("<?php echo $main_dir; ?>template/simcheck.php",{"action":"wikipedia_search","data":[$zenx[1],$zenx[0]]},function(data){
$(".prompt[value='SEARCH SCHOOL']").next("div").removeClass("contentbox").html(data);
});
}

if($(this).attr("href") == "close-chat"){
$(this).parent().parent().empty().detach();
$.get("<?php echo $main_dir; ?>template/simcheck.php",{"action":"chat_with_user","user":$(this).parent().parent().attr("ref"),"box_action":"close"}); //close it in the array
}


if($(this).attr("value") == "Complete Details"){       i = -1;
s_layer = $(this).attr("id");   zeus = new Array();        
$("."+s_layer).each(function(){ i++;//isn't that fun 
zeus[i] = $(this).attr("name") + " : " + $(this).val();     
});   i = 0;



alert(zeus);    
$.get("<?php echo $main_dir; ?>template/simcheck.php",{"action":"complete_details","data":zeus}).done(function(msg){ alert(msg); 
if(msg == "<?php echo $nx['38']; ?>"){
window.location.assign('<?php echo $_SERVER['HTTP_HOST'] . "/" . $_SERVER['PHP_SELF']; ?>/index.php?query=<?php echo $_MONITORED['login_q']; ?>');         
}
});
}






if($(this).attr("href") == "submit-edit"){  
$.post("<?php echo $main_dir; ?>template/simcheck.php?action=css_edit",{"data":$("#jones").val(),"file":$("#jones").attr("title")},function(data){
if(data.notice == "success"){alert("Successfully edited file!");}                                                                       
},"json");     
}

if($(this).attr("href") == "load-more"){
$(this).attr("Loading...");

$.get("<?php echo $main_dir; ?>template/news_feed.php",{"get_more":"true"<?php if(isset($_GET['snowglobe'])): ?>, "load_option": <?php echo '"sg_'.$_FILTERED['snowglobe'].'"'; endif;?>},function(older_msgs){
$("#news_feed").append(older_msgs);
});

$(this).remove();
}


if($(this).attr("href") == "select-school"){     $("#select4").removeAttr("id");
$(this).attr("id","select4");

if($(this).attr("datamine").length){

$.get("<?php echo $main_dir; ?>template/simcheck.php",{"action":"confirm_school","data":$(this).attr("datamine")}).done(function(msg){

$("#select4").parent().append(msg);

});
}else{

$.get("<?php echo $main_dir; ?>template/simcheck.php",{"action":"confirm_school"}).done(function(msg){

$("#select4").after(msg);

});

}
}
if($(this).attr("href") == "confirm_school"){ $("#select4").removeAttr("id");
$(this).attr("id","select4");
$.get("<?php echo $main_dir; ?>template/simcheck.php",{"action":"confirm_school","name":$(this).attr("name")}).done(function(msg){

$("#select4").after(msg);

});
}

<?php if(compare_dz($logged_zen['password'],$_SESSION['salt_q']) && $logged_dt['userid'] == 1): ?>   //admin panel stuff

if(/^edit[:]/g.test($(this).attr("href"))){    //murder murder murder murrdurrrrrrrrrrrrrrrrr murrrrrrdurrrrrrrrr
//FINALLY. holy shit mother of god tweaking batman
$zen_0 = $(this).attr('href');     

$zen_1 = $(this).attr('href');                
$zen_1 = $zen_1.replace(/^edit[:](.+)$/,"$1");

$.get($zen_1).done(function(css){
     $("link[href='" +$zen_1+"']").remove();
//modify directory file at url('')'s
     $snick = css;
     
     if($("head style[title='"+$zen_1+"']").length === 0){     
     $("head").append("<style title='"+$zen_1+"'>"+ $snick +"</style>");  
         
     }
if($("#jones").length === 0){  
$("a[href='"+$zen_0+"']").addClass("selected2").after("<a href='submit-edit' class='link_view link_view2 rad prompt'>Finish editing</a><textarea id='jones' title='"+$zen_1+"' style='height:500px;margin-top:5px'></textarea>");

//hmm...     

$("#jones").val($("style[title='"+$zen_1+"']").html());              
               
if($("style[title='"+$zen_1+"']").length === 0){  

   
   
}
}else{
}
     
}); 


}


switch($(this).attr("href")){

case "submit_sql":  
$.post("<?php echo $main_dir; ?>template/simcheck.php?action=sql_q",{"sql_q":$("#" + $(this).attr('refer')).val()},function(message){
$("#t_wrap").html(message);
});
break;
}



if(/^v[\137]/g.test($(this).attr("href"))){

if($(this).attr("href") == "v_css" || $(this).attr("href") == "v_sql" ){
$("#session_list").css({"width":"650px"});
}else{$("#session_list").removeAttr("style");}


if($(this).attr("href") == "v_sql"){
$("#session_list").draggable("disable");
}else{
$("#session_list").draggable("enable");
}




if($(".selected_link").attr("href") == $(this).attr("href")){

}else{$.get("<?php echo $main_dir; ?>template/simcheck.php",{"action":"change_panels","view":$(this).attr("href")});


$(".selected_link").removeClass("selected_link");  $(".open").removeClass("open");

$(this).addClass("selected_link");
$("div#" + $(this).attr("href")).addClass("open");

}
}

<?php endif; ?>   //end admin panel stuff




if($(this).attr("href") == "one-liner"){
$("#post_k input[name=tcha1]").val("<?php echo $nx['27'] ?>");$("#post_k textarea[name=tcha2]").toggle("200",function(){$(this).attr("style","display:block;box-shadow:0 0 6px #556378")}).removeClass("flick").val("<?php echo $nx['28'] ?>").end();  
}
if($(this).attr("href") == "add-more-choices"){
if($("input[name=poll_choice]").length < 21 && $("input[name=poll_choice]").eq(-1).val() !== "Add a choice here"){
$(this).before("<input type='text' class='largeform flick' value='Add a choice here' name='poll_choice'>");
}
}

if($(this).attr("href") == "add-friend"){  

$(this).addClass("greened");
$.get("<?php echo $main_dir; ?>template/simcheck.php",{"friend_status[]":[$("#check_friend_status").attr("ref1"),$("#check_friend_status").attr("ref2")],"action":"sg_req"}).done(function(data){
$("#check_friend_status").html(data);
});   


 
}

if($(this).attr("href") == "finished-poll-q"){
refs = "pass";
for(i=0;i<=$("input[name=poll_choice]").length;i++){
if(/^[ ]+$/.test($("input[name=poll_choice]").eq(i).val()) || $("input[name=poll_choice]").eq(i).val() == "Add a choice here"){
refs = "fail";
}
}
if(refs == "fail"){
alert("One or more of the poll choices were left blank. Please correct them.");
}else{
//convert all form inputs to hidden type
//append to post_k
//close form

//then i'm gonna have to do put it back here in case they decide to add/delete some stuff

$("#content").insertBefore("form#post_k");

if($("#input_save").html().length > 0){
$("#input_save").empty();
}

$("#content input[type=text],#content input[type=checkbox]").each(function(){
if($(this).attr("type") == "text"){
var order = ($(this).attr('name') == "poll_choice") ? $(this).attr('name') + ($(this).index()-2) : $(this).attr('name');
$("#input_save").prepend("<input type='hidden' name='"+ order +"' value='"+$(this).val()+"'>");
}
if($(this).attr("type") == "checkbox"){
$("#input_save").prepend("<input type='hidden' name='"+$(this).attr('name')+"' value='"+ $(this).prop('checked') +"'>");
}
});
$("#black_overlay").empty().detach();
$("#attach_poll_q").html("MANAGE ATTACHED POLL");
}


}
if($(this).attr("href") == "toggle"){
if($(this).parent().next().is(".spoiler")){$(this).parent().next(".spoiler").toggle();}
if($(this).parent().parent().is("#first1")){
$("#first1").toggle();
}
 

}

if($(this).attr("href") == "add-poll" && !($("#black_overlay").length)){
$("body").prepend($black_layer[0] + $black_layer[1]);
$("#content").appendTo("#widthfix");  //keep the dynamicity?


} 

<?php endif; ?>   //end logged_in conditional

}); 

/*and CUT*/

});



</script>   