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

<div class="row" style="margin:40px;">
<!--      panel-->
               
           <div class="col-md-12 col-sm-12 titTable1" style="text-align:center;">        
           <div class="panel panel-primary" style="border:0px;">
            <div class="panel-heading"><b>{TITLE}</b></div>
             <div class="panel-body" >
                 
     <!-- IF B_USERBID -->
	<div class="{YOURBIDCLASS}">
		{YOURBIDMSG}
	</div>
<!-- ENDIF -->
                 
<!-- IF B_HASENDED eq false and B_CAN_BUY -->
	<!-- IF B_NOTBNONLY -->
				<table width="100%" border=0 cellpadding=2 cellspacing=0 border=1>    
                <div class="col-md-4 col-sm-4">  
				<form name="bid" action="{BIDURL}bid.php" method="post">
				<tr>
				  <td width="65%">
					<table width=100% border=0 cellpadding=2 cellspacing=0 >
					  <tr valign='center'>
						<td valign='center' align='center' class='tema' width="50%">
						<b>
		<!-- IF QTY gt 1 -->
							{L_284}: <input class="form-control" type="text" name="qty" size=15 /> {QTY} {L_5408}<br>
		<!-- ENDIF -->
							{L_121} <input class="form-control" type="text" name="bid" size="15">
		<!-- IF ATYPE eq 1 -->
						{L_124}: {NEXTBID}
						 <br>
                            <br>
		<!-- ENDIF -->          
                     <input type="hidden" name="seller_id" value="{SELLER_ID}">
					 <input type="hidden" name="title" value="{TITLE}" >
					 <input type="hidden" name="category" value="{CAT_ID}" >
					 <input type="hidden" name="id" value="{ID}">
                     <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
					 <input class="btn btn-primary btn-block" type="submit" name="" value="{L_30_0208}">
						</td>
					  </tr>
					</table>
				   </td>
                    <br>
				  </tr>
				</form>
             </div>
				</table>
	<!-- ELSE -->
				{BUYNOW} <a href="{BIDURL}buy_now.php?id={ID}"><img border="0" align="absbottom" alt="{L_496}" src="{BNIMG}"></a>
	<!-- ENDIF -->
<!-- ENDIF -->
 
             </div>
                </div>
    </div>
</div>