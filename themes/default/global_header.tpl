<!DOCTYPE html>
<html dir="{DOCDIR}" lang="{LANGUAGE}">
<head>
<title>{PAGE_TITLE}</title>
<meta http-equiv="Content-Type" content="text/html; charset={CHARSET}">
<meta name="description" content="{DESCRIPTION}">
<meta name="keywords" content="{KEYWORDS}">
<meta name="generator" content="WeBid">


<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/jquery.lightbox.css" media="screen">
<link rel="stylesheet" type="text/css" href="{INCURL}inc/calendar.css">
    
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/style.css">

<link rel="alternate" type="application/rss+xml" title="{L_924}" href="{SITEURL}rss.php?feed=1">
<link rel="alternate" type="application/rss+xml" title="{L_925}" href="{SITEURL}rss.php?feed=2">
<link rel="alternate" type="application/rss+xml" title="{L_926}" href="{SITEURL}rss.php?feed=3">
<link rel="alternate" type="application/rss+xml" title="{L_927}" href="{SITEURL}rss.php?feed=4">
<link rel="alternate" type="application/rss+xml" title="{L_928}" href="{SITEURL}rss.php?feed=5">
<link rel="alternate" type="application/rss+xml" title="{L_929}" href="{SITEURL}rss.php?feed=6">
<link rel="alternate" type="application/rss+xml" title="{L_930}" href="{SITEURL}rss.php?feed=7">
<link rel="alternate" type="application/rss+xml" title="{L_931}" href="{SITEURL}rss.php?feed=8">
    
    <!-- Latest compiled and minified CSS -->
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">-->
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
   
    
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/bootstrap.css">    
<!--<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/font-awesome.min.css">-->
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/newStyle.css"> 
<script type="text/javascript" src="{INCURL}loader.php?js={JSFILES}"></script>
<!-- IF LOADCKEDITOR -->
	<script type="text/javascript" src="{INCURL}ckeditor/ckeditor.js"></script>
<!-- ENDIF -->

<script type="text/javascript">
$(document).ready(function() {
	$('a.new-window').click(function(){
		var posY = ($(window).height()-550)/2;
		var posX = ($(window).width())/2;
		window.open(this.href, this.alt, "toolbar=0,location=0,directories=0,scrollbars=1,screenX="+posX+",screenY="+posY+",status=0,menubar=0,width=550,height=550");
		return false;
	});
	var currenttime = '{ACTUALDATE}';
	var serverdate = new Date(currenttime);
	function padlength(what){
		var output=(what.toString().length==1)? "0"+what : what;
		return output;
	}
	function displaytime(){
		serverdate.setSeconds(serverdate.getSeconds()+1)
		var timestring=padlength(serverdate.getHours())+":"+padlength(serverdate.getMinutes())+":"+padlength(serverdate.getSeconds());
		$("#servertime").html(timestring);
	}
	setInterval(displaytime, 1000);
	$(function() {
		$('#gallery a').lightBox();
	});
});
</script>
</head>
<body>
<div class="wrapper rounded-top rounded-bottom">
    <!--w_bid logo-->
	<div class="splitbox">
    	<div class="leftside">
           <center>
    		<a class="" href="{SITEURL}index.php"> <img src="images/Logo.png" style="width:80%;height:120px;"</img> </a>
          </center>
            
        </div>
    	<div class="rightside">
        	<!--{BANNER}-->
          
        </div>
    </div>
    
	<div class="counters">
        <span class="rightside"><!-- IF B_LOGGED_IN -->{L_200} {YOURUSERNAME}</a>
            <!-- ENDIF --></span>
       <!-- <span class="rightside">{HEADERCOUNTER}</span>-->
	</div>
  <!--remove->
<!--remove->
  
	<div class="navbar">
    	<!--<div>
            <form name="search" action="{SITEURL}search.php" method="get">
            	<select class="" name="id">
					{SELECTION_BOX}
            	</select>
                <input type="search" name="q" size="50" value="{Q}" placeholder="{L_861}">
                <input type="submit" name="sub" value="{L_399}" class="button">
                <a href="{SITEURL}adsearch.php">{L_464}</a>
            </form>
		</div>
    </div>-->
    
    
     <nav class="navbar navbar-inverse">
      <div class="container-flut">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
                  data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
         <!-- <a class="navbar-brand" href="#">Adcau Sporte</a>-->
        </div>
          
        <div id="navbar" class="collapse navbar-collapse">
            
          <ul class="nav navbar-nav">
              
            <li><a href="{SITEURL}index.php?">{L_166}</a></li>
          <!--  <li><a href="{SSLURL}logout.php?">{L_245}</a></li>-->
            <!-- IF B_CAN_SELL -->
			<li><a href="{SITEURL}select_category.php?">{L_028}</a></li>
           
            <!-- ENDIF -->
           <!-- IF B_LOGGED_IN -->

            <li><a href="{SITEURL}user_menu.php?">{L_622}</a></li>
            <li><a href="{SSLURL}logout.php?">{L_245}</a></li>


            
           <!-- ELSE -->

            <li><a href="{SSLURL}register.php?">{L_235}</a></li>
            <li><a href="{SSLURL}user_login.php?">{L_052}</a></li>

              <!--<p>Please Login</p>-->
             <!-- ENDIF -->
             <!-- IF B_BOARDS -->
			<li><a href="{SITEURL}boards.php">{L_5030}</a></li>
            <!-- ENDIF -->
            <li><a href="{SITEURL}help.php" alt="faqs" class="new-window">{L_148}</a></li> 
          </ul>
            
         
        </div><!--/.nav-collapse -->
      </div>
    </nav>
