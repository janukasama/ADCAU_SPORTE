<!-- IF B_COUNTDOWN -->
<script type="text/javascript">
$(document).ready(function() {
	var currenttime = '{ENDS_IN}';
	function padlength(what)
	{
		var output=(what.toString().length == 1)? '0' + what : what;
		return output;
	}
	function displaytime()
	{
		currenttime -= 1;
		if (currenttime > 0){
			var hours = Math.floor(currenttime / 3600);
			var mins = Math.floor((currenttime - (hours * 3600)) / 60);
			var secs = Math.floor(currenttime - (hours * 3600) - (mins * 60));
			var timestring = padlength(hours) + ':' + padlength(mins) + ':' + padlength(secs);
			$("#ending_counter").html(timestring);
			setTimeout(displaytime, 1000);
		} else {
			$("#ending_counter").html('<div class="error-box">{L_911}</div>');
		}
	}
	setTimeout(displaytime, 1000);
});
</script>
<!-- ENDIF -->
<div class="content">
	<div class="tableContent2">
	
	
   <div class="breadcrumb" style="color:white !important;">
            <a href="{SITEURL}friend.php?id={ID}" style="color:white;">{L_106}</a> |
            <!-- IF B_CANCONTACTSELLER -->
            <a href="{SITEURL}send_email.php?auction_id={ID}" style="color:white;">{L_922}</a> |
            <!-- ENDIF -->
            <!-- IF B_LOGGED_IN -->
            <a href="{SITEURL}item_watch.php?{WATCH_VAR}={ID}" style="color:white;">{WATCH_STRING}</a>
            <!-- ELSE -->
            <a href="{SITEURL}user_login.php?" style="color:white;">{L_5202}</a> 
            <!-- ENDIF -->

            <!-- IF B_USERBID -->

            <span style="color:#00ff00 !important; font-size:14px; font-weight:300px; float:right; margin-right:30px;">{YOURBIDMSG}</span>

            <!-- ENDIF -->

        </div>
        
        
        
        
<!--        sameera styles-->
        
        
        
        
        
        
	<br>
	<div class="table2">

	<br>

<!-- IF B_HAS_QUESTIONS -->
	<div class="tableContent2">
	  <div class="titTable4">
		<a name="questions"></a>{L_552}
	  </div>
	  <div class="table2">
	<!-- BEGIN questions -->
      	<b>{L_5239}</b>
        <div class="smallspan padding">
		<!-- BEGIN conv -->
        	<p><b>{questions.conv.BY_WHO}</b>: {questions.conv.MESSAGE}</p>
        <!-- END conv -->
        </div>
    <!-- END questions -->
	  </div>
	</div>
<!-- ENDIF -->
	<br>
        
      <div class="row">
              <div class="col-md-6">
                <div class="panel panel-primary">
                  <div class="panel-heading">Panel heading without title</div>
                  <div class="panel-body" style="min-height:270px;">
                   
                      
                      <table width="100%" border="0" cellpadding="5" cellspacing="0" >
			<tr>
<!-- IF B_HASIMAGE -->
			  <td width="10%" valign="top">
				<table bgcolor="#ffffff">
				  <tr>
					<td class="thumbnail" align='center' style="width:200px;height:200px;">
					  <img style="width:180px;height:180px;" src="{SITEURL}getthumb.php?w={THUMBWIDTH}&fromfile={PIC_URL}" border="0" align="center"><br>

					</td>
				  </tr>
				</table>
			  </td>
<!-- ENDIF -->
			  <td width="60%" valign="top">
				<table width="100%" align="center" cellpadding="0" cellspacing="0" valign="top" border="0" style="background-color:#ddd;min-height:200px;">
				  <tr>
					<td>&nbsp;
					</td>
					<td align="left" valign="top">
					  {L_611} <font color="#ff3300"><b>{AUCTION_VIEWS}</b></font> {L_612}<br>
					  <a href="#description"><img src="{SITEURL}images/info.gif" border='0'></a>
					  <a href="#description">{L_018}</a> &nbsp;&nbsp;&nbsp; 
					  <table border='0' width="100%" cellspacing="0" cellpadding="1">
						<!-- auction type -->
						<tr>
						 <td width="50%" align="left">{L_261}: </td>
						  <td align="left">{AUCTION_TYPE}</td>
						</tr>
						<!-- higher bidder -->
<!-- IF B_HASBUYER and B_NOTBNONLY -->
						<tr>
						  <td width='50%' valign="top">
							{L_117}:
						  </td>
						  <td>
	<!-- BEGIN high_bidders -->
							<p>
		<!-- IF B_BIDDERPRIV -->
							<b>{high_bidders.BUYER_NAME}</b>
		<!-- ELSE -->
							<a href="{SITEURL}profile.php?user_id={high_bidders.BUYER_ID}&auction_id={ID}"><b>{high_bidders.BUYER_NAME}</b></a>
							<b>(<a href="{SITEURL}feedback.php?id={high_bidders.BUYER_ID}&faction=show">{high_bidders.BUYER_FB}</a>)</b> 
		<!-- ENDIF -->
							{high_bidders.BUYER_FB_ICON}</p>
	<!-- END high_bidders -->
						  </td>
						 </tr>
<!-- ENDIF -->
<!-- IF QTY gt 1 -->
						<tr>
						  <td width="50%" align="left">{L_901}: </td>
						  <td align="left">{QTY}</td>
						</tr>
<!-- ENDIF -->
						<tr>
						  <td width="50%" align="left">{L_923}: </td>
						  <td align="left">{COUNTRY}</td>
						</tr>
						<tr>
						  <td width="50%" align="left">{L_118}: </td>
						  <td align="left" valign="top">
<!-- IF B_COUNTDOWN -->
                          	<span id="ending_counter">{ENDS}</span>
<!-- ELSE -->
                          	{ENDS}<!-- IF B_SHOWENDTIME --><br><span class="smallspan">({ENDTIME})</span><!-- ENDIF -->
<!-- ENDIF -->
                          </td>
						</tr>
<!-- IF B_NOTBNONLY -->
						<tr>
						  <td width="50%" align="left">{L_119}: </td>
						  <td align="left">{NUMBIDS} {VIEW_HISTORY2}</td>
                         
						</tr>
	<!-- IF ATYPE eq 2 -->
						<tr>
						  <td width="50%" align="left">
						  	{L_038}:
						  </td>
						  <td align="left">{MINBID}</td>
						</tr>
	<!-- ENDIF -->
						<tr>
						  <td width="50%" align="left">{L_116}: </td>
						  <td align="left" valign="middle">{MAXBID}<!-- IF B_HASRESERVE -->&nbsp;<span class="smallspan">{L_514}</span><!-- ENDIF --></td>
						</tr>
<!-- ENDIF -->
						<tr>
						  <td width="50%" align="left">{L_023}: </td>
						  <td align="left">{SHIPPING_COST}</td>
						</tr>
<!-- IF (B_ADDITIONAL_SHIPPING_COST or B_BUY_NOW_ONLY) and B_SHOW_ADDITIONAL_SHIPPING_COST -->
						<tr>
						  <td width="50%" align="left">{L_350_1008}: </td>
						  <td align="left">{ADDITIONAL_SHIPPING_COST}</td>
						</tr>
<!-- ENDIF -->
<!-- IF B_BUY_NOW -->
						<tr>
						  <td width="50%" align="left">{L_496}:</td>
						  <td align="left">
						  	{BUYNOW2}
						  </td>
						</tr>
<!-- ENDIF -->
<!-- IF B_HASENDED -->
						<tr>
						  <td colspan="2" align="left"><b>{L_904}</b></td>
						</tr>
<!-- ENDIF -->
					  </table>
					</td>
				  </tr>
				</table>
			  </td>
			</tr>
		  </table>
                      
                      
                  </div>
                </div>       

              </div>  

          
          
          
          
          
          
            <div class="col-md-6">
                <div class="panel panel-primary">
                  <div class="panel-heading">{L_30_0209}</div>
                  <div class="panel-body">
                  
                      
                      
                      	<table width="100%" border="0" cellpadding="0" cellspacing="0">
	  <tr>
		<td class="titTable5" valign="top">
		  
		</td>
		<td width="2%">&nbsp;</td>
		<td width="37%" valign="top" bgcolor="#ffffff" align="left">
         
            <div style="background-color:#ddd;height:150px;padding:10px;marging-bottom:10px;">

		  <table width="100%" cellspacing="0" cellpadding="4" border="0" bgcolor="#ffffff">
			<tr>
			  <td width="3%" class='table2'>&nbsp;</td>
			  <td class="table2" style="padding:10px;">
				<a href='{SITEURL}profile.php?user_id={SELLER_ID}&auction_id={ID}'><b>{SELLER_NICK}</b></a>
				(<a href='{SITEURL}feedback.php?id={SELLER_ID}&faction=show'>{SELLER_TOTALFB}</A>)
				{SELLER_FBICON}
			  </td>
			</tr>
			<tr>
			  <td width="3%">&nbsp;</td>
			  <td width="97%">
				<li>{L_5509}{SELLER_NUMFB}{L__0151}
				<li><b>{L_5506}{SELLER_FBPOS}</b>
<!-- IF SELLER_FBNEG ne 0 -->
				<li>{SELLER_FBNEG}</li>
<!-- ENDIF -->
				<li>{L_5508}{SELLER_REG}</li>
			  </td>
			</tr>
			<tr>
			  <td width="3%">&nbsp;</td>
			  <td width="97%">
				<a href="{SITEURL}active_auctions.php?user_id={SELLER_ID}">{L_213}</a>
				<br><br>
			  </td>
			</tr>
		  </table>
            </div>
           
            
            <div style="background-color:#ccc;height:90px;padding:10px;">
		  <div class="">
<!-- IF B_HASENDED eq false and B_CAN_BUY -->
	<!-- IF B_NOTBNONLY -->
				<table width="100%" border=0 cellpadding=2 cellspacing=0 border=1>
				<form name="bid" action="{BIDURL}bid.php" method="post">
				<tr>
				  <td width="65%">
					<table width=100% border=0 cellpadding=2 cellspacing=0>
					  <tr>
						<td align="left">
						<b>
		<!-- IF QTY gt 1 -->
							{L_284}: <input type="text" name="qty" size=15 /> {QTY} {L_5408}<br>
		<!-- ENDIF -->
							{L_121} <input class="form-control" style="width:400px;" type="text" name="bid" size="15">
		<!-- IF ATYPE eq 1 -->
						{L_124}: {NEXTBID}
						 <br>
		<!-- ENDIF -->
						</td>
					  </tr>
					</table>
				   </td>
				   <td valign='center' align='center' class='tema' width="50%">
					 <input type="hidden" name="seller_id" value="{SELLER_ID}">
					 <input type="hidden" name="title" value="{TITLE}" >
					 <input type="hidden" name="category" value="{CAT_ID}" >
					 <input type="hidden" name="id" value="{ID}">
                     <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
					 <input type="submit"  name="" value="{L_30_0208}" class="btn btn-success">
					</td>
				  </tr>
				</form>
				</table>
	<!-- ELSE -->
				{BUYNOW} <a href="{BIDURL}buy_now.php?id={ID}"><img border="0" align="absbottom" alt="{L_496}" src="{BNIMG}"></a>
	<!-- ENDIF -->
<!-- ENDIF -->
		  </div>
                
                </div>
		</td>
	  </tr>
	</table>
                      
                  </div>
                </div>       

              </div>  
        
      </div>

        
        
        
       <!--addvance infomation boostr--> 
      <div class="row">
          <div class="col-md-12">

                <div class="panel panel-primary">
                  <div class="panel-heading">{L_724}</div>
                  <div class="panel-body">
                  
                     
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
	  <tr>
		<td>
		  <div class="tableContent2">
     
     <ul class="list-group">
         <!-- IF COUNTRY ne '' or ZIP ne '' -->
    <li class="list-group-item"><b>{L_014}:</b> {COUNTRY} ({ZIP})</li>
         <!-- ENDIF -->
    <li class="list-group-item"><b>{L_025}:</b> {SHIPPING}, {INTERNATIONAL}</li>
         
         <!-- IF SHIPPINGTERMS ne '' -->
    <li class="list-group-item"><b>{L_25_0215}:</b> {SHIPPINGTERMS}</li>
         <!-- ENDIF -->
         
         
    <li class="list-group-item"><b>{L_026}:</b> {PAYMENTS}</li>
         
         
         <!-- IF ! B_BUY_NOW_ONLY -->
    <li class="list-group-item"><b><!-- IF ATYPE eq 1 -->{L_127}<!-- ELSE -->{L_038}<!-- ENDIF -->:</b> {MINBID}</li>
         <!-- ENDIF -->
         
         <li class="list-group-item"><b>{L_111}:</b> {STARTTIME}</li>
         
         <li class="list-group-item"><b>{L_112}:</b> {ENDTIME}</li>
         
         <li class="list-group-item"><b>{L_113}:</b> {ID}</li>
         
         <li class="list-group-item"><!-- IF SECCATSPATH ne '' --><b>{L_814}:</b> {SECCATSPATH}<!-- ENDIF --></li>
         
         
  </ul>
                
                
                
			
		  </div>
		</td>
	  </tr>
	</table>
        
                      
                      
                  </div>
                </div>       

          </div>  
        
      </div>
        
        
        
        
        
        
        
        
<!--        ADDTIONAL INFORMATION-->
        
        
        
        
        
	
      
        
        
        
        
        
        
        
        
        
	<br>
  </div>
  </div>
</div>

<!-- IF B_SHOWHISTORY -->
<div class="tableContent2">
	<div class="titTable4">
		{L_26_0001}
	</div>
	<div class="table2">
		<a name="history"></a>
		<table width="100%" border="0" cellpadding="4" cellspacing="1">
			<tr>
				<th width="33%" align="center">{L_176}</th>
				<th width="33%" align="center">{L_130}</th>
				<th width="33%" align="center">{L_175}</th>
	<!-- IF ATYPE eq 2 -->
				<th width="33%" align="center">{L_284}</th>
	<!-- ENDIF -->
			</tr>
	<!-- BEGIN bidhistory -->
			<tr valign="top" {bidhistory.BGCOLOUR}>
				<td>
		<!-- IF B_BIDDERPRIV -->
					{bidhistory.NAME}
		<!-- ELSE -->
					<a href="{SITEURL}profile.php?user_id={bidhistory.ID}">{bidhistory.NAME}</a>
		<!-- ENDIF -->
				</td>
				<td align="center">
					{bidhistory.BID}
				</td>
				<td align="center">
					{bidhistory.WHEN}
				</td>
		<!-- IF ATYPE eq 2 -->
				<td align="center">
					{bidhistory.QTY}
				</td>
		<!-- ENDIF -->
			</tr>
	<!-- END bidhistory -->
		</table>
	</div>
</div>
<!-- ENDIF -->