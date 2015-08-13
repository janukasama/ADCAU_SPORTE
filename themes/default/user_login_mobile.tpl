<div class="container">
    <div class="row">
        <div class="col-sm-10 col-md-4 col-sm-offset-1 col-md-offset-4">
            <!--<img class="img-responsive center-block loginimage" src="images/loginlogo.png"</img> -->
                    <form name="user_login" action="{SSLURL}user_login.php" method="post">
						<input type="text" name="username" class="form-control" placeholder="username" maxlength="20" required autofocus><br/>
						<input type="password" class="form-control" placeholder="password" name="password" size="20" maxlength="20" value="" required><br/>
						
						<input type="submit" name="input" value="Sign in" class="btn btn-primary btn-block">
						<input type="hidden" name="action" value="login">
						
						<a href="#" class="pull-right need-help"> </a></br>
						<span>
						<p class="label label-danger">{ERROR}</p>
						</span>
                    </form>
        </div>
              
    </div>
</div>