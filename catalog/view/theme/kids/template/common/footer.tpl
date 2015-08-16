</div> <!-- end div class container -->
<footer>
    <aside class="social_block1">
    <div class="container">
      <div class="row">
        <div class="grid_8">
          <form id="newsletter">
            <label>Sign up for newsletter:</label>
            <input type="text" value="Enter your email address here" onBlur="if(this.value=='') this.value='Enter your email address here'" onFocus="if(this.value =='Enter your email address here' ) this.value=''">
            <a href="#" class="news_button"></a>
          </form>
        </div>
        <div class="grid_4">
          <div class="social">
            <span>Stay connected:</span>
            <a href="#" title="Twitter"><img src="catalog/view/theme/kids/image/soc1.png" alt=""></a>
            <a href="#" title="Facebook"><img src="catalog/view/theme/kids/image/soc2.png" alt=""></a>
            <a href="#" title="Google+"><img src="catalog/view/theme/kids/image/soc3.png" alt=""></a>
            <a href="#" title="RSS"><img src="catalog/view/theme/kids/image/soc4.png" alt=""></a>
            <a href="#" title="Pinterest"><img src="catalog/view/theme/kids/image/soc5.png" alt=""></a>
          </div>
        </div>
      </div>
    </div>
  </aside>
  <aside class="social_block2">
    <div class="container">
      <div class="row">
        <?php if ($informations) { ?>
        <div class="grid_3">
          <h4 class="ind"><?php echo $text_information; ?></h4>
          <ul class="list1">
            <?php foreach ($informations as $information) { ?>
            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
        <div class="grid_3">
          <h4 class="ind"><?php echo $text_service; ?></h4>
          <ul class="list1">
            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
            <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
            <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
          </ul>
        </div>
        <div class="grid_3">
          <h4 class="ind"><?php echo $text_extra; ?></h4>
          <ul class="list1">
            <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
            <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
            <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
            <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
          </ul>
        </div>
        <div class="grid_3">
          <h4 class="ind"><?php echo $text_account; ?></h4>
          <ul class="list1">
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
            <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
          </ul>
        </div>
      </div>
    </div>
  </aside>
  <aside class="footer_bottom">
    <div class="container">
      <div class="row">
        <div class="grid_12">
          <div class="wrapper">
            <div class="privacy">
              &copy; 2015 <!--<span>Kids Planet eCommerce</span> All rights reserved.-->
            </div>
            <ul class="footer_menu">
              <!--<li><a href="#">Custom link</a></li>-->
              <!--<li><a href="#">Buy this template</a></li>-->
            </ul>
          </div>
        </div>
      </div
	 >
	 <!--<a style="display:none;"href="http://tempforest.ru/wptemplates/">Скачать бесплатные шаблоны для Wordpress</a>	-->
    </div>
  </aside>
</footer>
<script type="text/javascript" src="catalog/view/theme/kids/js/retina.js"></script> 
</div>
</body></html>