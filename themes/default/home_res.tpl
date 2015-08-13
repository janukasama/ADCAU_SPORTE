<div class="container">

    <div class="row" style="margin-top:-90px;">
        <section id="">
            <!-- IF B_HOT_ITEMS -->
            <!-- BEGIN hotitems -->
            <div class="col-md-3 col-sm-6">
                <a href="{SITEURL}item.php?id={hotitems.ID}" class="" data-toggle="modal" style="color:black !important;">


                    
                    
                        <div class="food-box thumbnail">
                            <div style="color:#fff; text-align:center; background-color:#1D7CF2;height:30px;width:100%;margin-top:-10px; border-radius:4px 4px 0px 0px;"><h5 style="padding-top:10px;" >{hotitems.TITLE}</h5></div>
                            <div class="food-box-image">
                                <img src="{hotitems.IMAGE}" alt="dream" class="" style="margin-top:10px;min-height:150px;max-height:150px;">
                                <hr>
                              
                                
                                        <div style="color:#222 !important;text-align:center;">
                                            <h2 style="color:#ccc !important;font-size:25px;">{hotitems.BID}</h2>
                                        </div>
                            
                                
                            </div>
                            <div class="food-box-transparentbg" style="text-align:center;">
                                <div class="food-box-title">
                                
                                    <h5>{hotitems.ENDTIMES}</h5>

                                    <p id="aaa">{hotitems.END}</p>
                                    
                                   
                                  
                                    
                                </div>

                                <div class="food-box-desc" style="text-align:center;">
                                    
                                </div>
                            </div>
                            
                            <div class="food-box-uploadby"></div>
                            <!--<div class="food-box-info">
        <div class="food-box-like">15</div>
        <div class="food-box-comment">10</div>
    </div>-->
                            
                            
                            
                            
                        </div>

                   







                </a>


            </div>

            <!-- ENDIF -->
            <!-- END hotitems -->


        </section>
    </div>

</div>





<script type="text/javascript">
    $(document).ready(function() {
          var r;
        //we bind the effect of mouseover and mouseenter on the food-box wrapper.
        $(".food-box").bind("mouseover, mouseenter", function() {
         
           r =document.getElementById("aaa");
            
            console.log(r.innerHTML);
  
          
            //this will change the user name to white text as we apply this class
            $(this).find(".food-box-uploadby").addClass("white-text");

            //this will find the child food-box-transparentbg div and slide/show the hidden box 
            $(this).find(".food-box-transparentbg").slideDown(300);

            //this will show the comments, rating information in a delay of 0.2 sec
            $(this).find(".food-box-info").show(200);

            //we bind when the effect of mouseout and mouseleave on the food-box wrapper
        }).bind("mouseout, mouseleave", function() {
             r="";
            console.log(r);
  
            //this will find the child food-box-transparentbg div and hide the hidden box 
            $(this).find(".food-box-transparentbg").slideUp(300);

            //this will remove the class white-text we add before and will make the color back to its original color
            $(this).find(".food-box-uploadby").removeClass("white-text");

            //this will hide the comments, rating information in a delay of 0.3 sec
            $(this).find(".food-box-info").hide(300);
        });

        /*
		This is optional, if you want to enable url when user click the box, you can use this function. Otherwise you can leave it or remove it from the code.
		*/
        $(".food-box").bind("click", function() {
            window.location.href = "#";
        });
    });
</script>





<!--

        <script>
            
            var count = 30;
            var counter = setInterval(timer, 1000); //1000 will  run it every 1 second

            function timer() {
                count = count - 1;
                if (count == -1) {
                    clearInterval(counter);
                    document.getElementById('note').innerHTML = 'EXPIRED!';
                    return;
                }

                var seconds = count % 60;
                var minutes = Math.floor(count / 60);
                var hours = Math.floor(minutes / 60);
                minutes %= 60;
                hours %= 60;

                document.getElementById("hours").innerHTML = hours;
                document.getElementById("minutes").innerHTML = minutes;
                document.getElementById("seconds").innerHTML = seconds;
            }
        </script>
-->

