<div class="container">

    <div class="row">

        <!-- <div class="col-sm-6 col-md-12 ">-->
        <!-- IF B_HOT_ITEMS -->
        <!-- BEGIN hotitems -->
        <div class="thumbnail col-sm-6 col-md-3 item-data " id="block">
            <div id="hot-title">
                <h4>{hotitems.TITLE}</h4>
            </div>
            <img src="{hotitems.IMAGE}" class="img-thumbnail bit-img" />
            <div class="caption">

                <div class="item-data">
                    <ul class="list-group" style="text-align:center;">
                        <li class="list-group-item">2015/08/05</li>
                        <li class="list-group-item">{hotitems.ENDS}</li>
                        <li class="list-group-item"><a href="{SITEURL}item.php?id={hotitems.ID}">{hotitems.TITLE}</a>
                        </li>
                        <li class="list-group-item">current Bid : {hotitems.BID}</li>

                    </ul>

                </div>

            </div>
            <div class="footer" style="background-color:#1D7CF2; border-radius:0px 0px 3px 3px;"></div>
        </div>

        <!-- ENDIF -->
        <!-- END hotitems -->
        <!-- </div>-->


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