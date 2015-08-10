<div class="container">

    <div class="row" style="margin-top:-90px;">
        <section id="portfolio">
            <!-- IF B_HOT_ITEMS -->
            <!-- BEGIN hotitems -->
               <div class="col-md-3 col-sm-6 portfolio-item">
                    <a href="{SITEURL}item.php?id={hotitems.ID}" class="portfolio-link" data-toggle="modal">
                        <div class="thumbnail">
                            
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                   <b> <i class="glyphicon glyphicon-plus" style="font-size:5em;color:#fff;"></i></b>
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
                                <p>{hotitems.ENDTIMES}</p>
                                <p>2015/08/05</p>
                                <p>{hotitems.ENDS}</p>
                                <p>{hotitems.ENDS}</p>
                                <p>Current Bid:{hotitems.BID}</p>
                               
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


    
    
    
<script>
    $(document).ready(function() {

        $('.item-data').hover(
            function() {
                $(this).fadeOut(500);
                $(this).fadeIn(50);


            },

            function() {
                $(this).css({

                });
            }
        );
    });
</script>