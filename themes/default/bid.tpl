<!-- IF TQTY gt 1 -->
<script type="text/javascript">
$(document).ready(function(){
	$("#qty").keydown(function(){
		$("#bidcost").text(($("#qty").val())*($("#bid").val()) + ' {CURRENCY}');
	});
	$("#bid").keydown(function(){
		$("#bidcost").text(($("#qty").val())*($("#bid").val()) + ' {CURRENCY}');
	});
});
</script>
<!-- ENDIF -->
<div class="content">
	<div class="tableContent2">
		
		
            
            
            

        
        
        
		<div class="table2 padding" style="text-align:left;">
            
            <div class="row">
                <div class="col-md-1"></div>
            <div class="col-md-10">
                <div class="panel panel-primary">
                    <div class="panel-heading"><!-- IF PAGE eq 1 -->{L_152}<!-- ELSE -->{L_271}<!-- ENDIF --></div>
                    <div class="panel-body" style="background-color:#d8d8d8;">
<!-- IF PAGE eq 1 -->
	<!-- IF ERROR ne '' -->
			<div class="alert alert-danger">
				{ERROR}
			</div>
	<!-- ENDIF -->
            
            
            
            <div style="background-color:#ddd;height:350px;">
                
                
			<form name="bid" action="{ASSLURL}bid.php" method="post" >
            <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
			<table class="table table-striped">
		
                
               <tr>
                    
					<td><b>{L_154}</b></td>
					<td>{TITLE}</td>
				</tr>
				<tr>
					<td><b>{L_116}</b></td>
					<td>{CURRENT_BID}</td>
				</tr>
				<tr>
					<td><b>{L_156}</b></td>
					<td><input class="form-control" type="text" size="5" name="bid" id="bid" value="{BID}">
						<!-- IF ATYPE eq 1 -->({L_283}: {NEXT_BID})<!-- ENDIF --></td>
				</tr>
	<!-- IF TQTY gt 1 -->
				<tr>
					<td><b>{L_284}:</b></td>
					<td><input type="number" name="qty" id="qty" value="{QTY}" min="1" max="{TQTY}" step="1"></td>
				</tr>
	<!-- ENDIF -->
	<!-- IF B_USERAUTH -->
				<tr>
					<td><b>{L_003}</b></td>
					<td><b>{YOURUSERNAME}</b>
					</td>
				</tr>
				<tr>
					<td><b>{L_004}</b></td>
					<td><input class="form-control"  type="password" name="password" size="20"  value="">
					</td>
				</tr>
	<!-- ENDIF -->
              
			</table>
			<div style="text-align:center; margin-top:35px;">
				<input type="hidden" name="id" value="{ID}">
				<p>{AGREEMENT}</p>
				<input type="hidden" name="action" value="bid">
				<input type="submit" name="Input" value="{L_5199}" class="btn btn-success" style="margin:10px;">
			</div>
			</form>
                 </div>
<!-- ELSE -->
            <div style="text-align:center;">
			<a href="{SITEURL}item.php?id={ID}" >{L_699} {BID} {L_700}</a><br>
                
                <br>
             
                <a class="btn btn-info"style="color:white !important; border-radius:0px;" href="{SITEURL}item.php?id={ID}">{L_138}</a>
     
			</div>
             
<!-- ENDIF -->
		</div>
                    </div>
                
                </div>
                <div class="col-md-1"></div>
                </div>
             
            </div>
	</div>
</div>