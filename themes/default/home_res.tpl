 <body>
     <div class="log">
<!-- IF B_LOGGED_IN -->
<!--
            <li><a href="{SITEURL}user_menu.php?">{L_622}</a></li>
            <li><a href="{SSLURL}logout.php?">{L_245}</a></li>

-->
            
           <!-- ELSE -->
<!--
            <li><a href="{SSLURL}register.php?">{L_235}</a></li>
            <li><a href="{SSLURL}user_login.php?">{L_052}</a></li>
-->
              <p>You are not Login,Please <a href="http://localhost/sample/user_login.php">Login</a></p>
             <!-- ENDIF -->
             <!-- IF B_BOARDS -->
			
            <!-- ENDIF -->
         </div>
<div class="container">

    <div class="row" style="margin-top:-90px;">
        <section id="portfolio" >
            <!-- IF B_HOT_ITEMS -->
            <!-- BEGIN hotitems -->
               <div class="col-md-3 col-sm-6 portfolio-item">
                    <a href="{SITEURL}item.php?id={hotitems.ID}" class="portfolio-link" data-toggle="modal">
                        <div class="thumbnail" style="border:0px;">
                            
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                   <b> <i class="" style="font-size:5em;color:#fff;"></i></b>
                                </div>
                            </div>
                            <div class="caption"
                                 style="background-color:#1D7CF2;height:50px; border-radius:2px 2px 0px 0px;">
                                <h4 style="text-align:center;color:#fff" >{hotitems.TITLE}</h4>
                            </div>
                            <img src="{hotitems.IMAGE}" alt="dream" class=""
                                 style="margin-top:10px;min-height:150px;max-height:150px;">
                            <hr>
                            
                            <div class="portfolio-caption">
                    
                              <!--  <p>current Bid : {hotitems.BID}</p>-->
                                
                     <ul class="list-group" style="text-align:center;">
                       
                        <li class="list-group-item" style="border:0px;">{hotitems.ENDS} Left</li>
                         <li class="list-group-item" style="border:0px;">Current Bid : {hotitems.BID}</li>
                       </ul>
                            </div>
                            
                           
                              <div class="caption"
                                 style="aglign:center;background-color:#1D7CF2;height:10px; border-radius:0px 0px 2px 2px;">
                                  <p class="text-muted"></p>
                                 
                            </div>
                        </div>
                </div>
            <!-- ENDIF -->
            <!-- END hotitems -->


        </section>
    </div>

</div>


    
    
    
