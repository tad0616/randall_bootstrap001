    <div id="templatemo_slider">
      <div class="slider-wrapper theme-orman">
        <{if $slider_var}>
          <div id="slider" class="nivoSlider">
           <{foreach from=$slider_var item=wnmhi}>
              <a href="<{$wnmhi.slide_url}>">
              <span class="sliderframe">
              <img src="<{$wnmhi.file_url}>" alt="<{$xoops_sitename}>" title="<{$wnmhi.description}>">
              </span>
              </a>
           <{/foreach}>
          </div>
        <{/if}>
      </div>
      <script type="text/javascript" src="<{xoImgUrl js/jquery.nivo.slider.pack.js}>"></script>
      <script type="text/javascript">
      $(window).load(function() {
          $('#slider').nivoSlider({
            controlNav:false,
             directionNavHide: false
          });
      });
      </script>
    </div><!-- END of templatemo_slider -->