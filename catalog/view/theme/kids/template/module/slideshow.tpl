<article class="grid_8">
  <div class="fluidHeight">
    <div class="sliderContainer">
      <div class="iosSlider">
        <div class="slider">         
            <?php foreach ($banners as $banner) { ?>
            <div class="item">
            <?php if ($banner['link']) { ?>
            <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
            <?php } else { ?>
            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
            <?php } ?>
            </div>
            <?php } ?>
        </div>
        <div class = 'prevContainer'>
            <div class = 'prev'></div>
          </div>
          <div class = 'nextContainer'>
            <div class = 'next'></div>
          </div>
      </div>
    </div>
  </div>
</article>