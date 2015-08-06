
<div class="container">

<div class="row">
    
  <div class="col-sm-6 col-md-12 ">
       <!-- IF B_HOT_ITEMS -->
      <!-- BEGIN hotitems -->
   <a href="{SITEURL}item.php?id={hotitems.ID}" style="text-decoration: none;">
    <div class="thumbnail col-sm-6 col-md-3 h">
        <div id="hot-title">
             <h4>{hotitems.TITLE}</h4>
        </div>
      <img  src="{hotitems.IMAGE}" style="max-height:140px; width:100%;" class="img-thumbnail"/>
      <div class="caption">
       
        <div id="item-data">
            <ul class="list-group" style="text-align:center;"> 
                  <li class="list-group-item">2015/08/05</li>
                  <li class="list-group-item">{hotitems.ENDS}</li>
                 <li class="list-group-item">current Bid : {hotitems.BID}</li>
                  
            </ul>
           
       </div>
       
      </div>
        <div class="footer" style="background-color:#1D7CF2;"></div>
    </div></a>
   
       
      <!-- ENDIF -->
       <!-- END hotitems -->
  </div>
    
    
    
    
    
    
</div>
 
</div>
