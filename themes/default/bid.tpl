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
<div class="row" style="margin:30px;">
		<div class="col-md-12 col-sm-12" style="text-align:center;">
             <div class="panel panel-primary" >
             <div class="panel-heading"><b>{TITLE}</b></div>
             <div class="panel-body" >
<!-- IF PAGE eq 1 -->
	<!-- IF ERROR ne '' -->
			<div class="alert alert-danger">
				{ERROR}
			</div>
	<!-- ENDIF -->
			<form name="bid" action="{ASSLURL}bid.php" method="post">
            <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
			<table width="60%" border=0 cellpadding="4" style="text-align:left;" class="table table-hover">
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
					<td><input type="text" size="5" name="bid" id="bid" value="{BID}" class="form-control">
						<!-- IF ATYPE eq 1 -->({L_283}: {NEXT_BID})<!-- ENDIF --></td>
				</tr>
	<!-- IF TQTY gt 1 -->
				<tr>
					<td><b>{L_284}:</b></td>
					<td><input type="number" name="qty" id="qty" value="{QTY}" min="1" max="{TQTY}" step="1" class="form-control"></td>
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
					<td><input type="password" name="password" size="20"  value="" class="form-control">
					</td>
				</tr>
	<!-- ENDIF -->
			</table>
			<div style="text-align:center; margin-top:20px;">
				<input type="hidden" name="id" value="{ID}">
				<p>{AGREEMENT}</p>
				<input type="hidden" name="action" value="bid">
				<input type="submit" name="Input" value="{L_5199}" class="button btn btn-primary btn-block">
			</div>
			</form>
<!-- ELSE -->
                 <div class="col-md-12 col-sm-12">
			{L_272}&nbsp;
			{L_699} {BID} {L_700}
                     </div>
                 <!-- ENDIF -->
		</div>
	</div>
    </div>
</div>
