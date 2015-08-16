<?php echo $header; ?>
<section id="content" class="cont_pad">
  <?php echo $content_top; ?>
  <div class="breadcrump">
    <ul>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
    </ul>
  </div>
  <div class="row product">
    <?php echo $column_left; ?>
    <article class="grid_8">
      <div class="row">
        <article class="grid_4">
          <?php if ($thumb || $images) { ?>
          <div class="product_gallery">
            <?php if ($images && $thumb) { ?>
            <div id="slider" class="flexslider">
              <ul class="slides">           
                <?php 
                $i = 0;
                foreach ($images as $image) { 
                  if ($i == 0) { ?>
                  <li><span class="zoom"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></span></li>
                  <?php $i++; } ?>
                  <li><span class="zoom"><img src="<?php echo $image['thumb']; ?>" alt="<?php echo $heading_title; ?>" /></span></li>
                <?php } ?>
              </ul>
            </div>
            <?php } else{ ?>
            <div id="slider" class="flexslider">
              <ul class="slides">
                <li><span class="zoom"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></span></li>
              </ul>
            </div>
            <?php } ?>
            <?php if ($images && $thumb) { ?>
            <div id="carousel" class="flexslider">
              <ul class="slides">
                <?php 
                $i = 0;
                foreach ($images as $image) { 
                  if ($i == 0) {?> <li><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></li> <?php $i++; }
                ?>
                <li><img src="<?php echo $image['thumb']; ?>" alt="<?php echo $heading_title; ?>" /></li>
                <?php } ?>
              </ul>
            </div>
            <?php } ?>
          </div>
          <?php } ?>
        </article>
        <aricle class="grid_4 product_page">
          <h2 class="black"><?php echo $heading_title; ?></h2>
            <?php if ($review_status) { ?>
            <div class="product_info">
              <div class="rating">
                <?php 
                  for ($i=0; $i<5; $i++) {
                    if ($i < $rating) {
                      print '<span class="active"></span>';
                    }else{
                      print '<span></span>';
                    } 
                  }
                ?>
              </div>
              <div class="review">
                <a onclick="$('#tablist1-tab2').trigger('click'); $('html, body').animate ({ scrollTop: $('#tablist1-tab2').offset().top}, 500);"><?php echo $reviews; ?></a>&nbsp;
                <a onclick="$('#tablist1-tab2').trigger('click'); $('html, body').animate ({ scrollTop: $('#tablist1-tab2').offset().top}, 500);" class="write_view"><?php echo $text_write; ?></a>
              </div>
            </div>
            <?php } ?>
            <div class="description">
              <?php if ($manufacturer) { ?>
              <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
              <?php } ?>
              <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
              <?php if ($reward) { ?>
              <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
              <?php } ?>
              <span><?php echo $text_stock; ?></span> <?php echo $stock; ?>
            </div>
            <?php if ($price) { ?>
            <div class="price"><?php echo $text_price; ?>
              <?php if (!$special) { ?>
              <?php echo $price; ?>
              <?php } else { ?>
              <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
              <?php } ?>
              <br />
              <?php if ($tax) { ?>
              <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
              <?php } ?>
              <?php if ($points) { ?>
              <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
              <?php } ?>
              <?php if ($discounts) { ?>
              <br />
              <div class="discount">
                <?php foreach ($discounts as $discount) { ?>
                <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
                <?php } ?>
              </div>
              <?php } ?>
            </div>
            <?php } ?>
            <?php if ($options) { ?>
            <div class="options">
              <?php foreach ($options as $option) { ?>
              <?php if ($option['type'] == 'select') { ?>
              <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                <?php if ($option['required']) { ?>
                <span class="required">*</span>
                <?php } ?>
                <b><?php echo $option['name']; ?>:</b><br />
                <select name="option[<?php echo $option['product_option_id']; ?>]">
                  <option value=""><?php echo $text_select; ?></option>
                  <?php foreach ($option['option_value'] as $option_value) { ?>
                  <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                  </option>
                  <?php } ?>
                </select>
              </div>
              <br />
              <?php } ?>
              <?php if ($option['type'] == 'radio') { ?>
              <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                <?php if ($option['required']) { ?>
                <span class="required">*</span>
                <?php } ?>
                <b><?php echo $option['name']; ?>:</b><br />
                <?php foreach ($option['option_value'] as $option_value) { ?>
                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                </label>
                <br />
                <?php } ?>
              </div>
              <br />
              <?php } ?>
              <?php if ($option['type'] == 'checkbox') { ?>
              <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                <?php if ($option['required']) { ?>
                <span class="required">*</span>
                <?php } ?>
                <b><?php echo $option['name']; ?>:</b><br />
                <?php foreach ($option['option_value'] as $option_value) { ?>
                <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                </label>
                <br />
                <?php } ?>
              </div>
              <br />
              <?php } ?>
              <?php if ($option['type'] == 'image') { ?>
              <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                <?php if ($option['required']) { ?>
                <span class="required">*</span>
                <?php } ?>
                <b><?php echo $option['name']; ?>:</b><br />
                <table class="option-image">
                  <?php foreach ($option['option_value'] as $option_value) { ?>
                  <tr>
                    <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                    <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                    <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                        <?php if ($option_value['price']) { ?>
                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                        <?php } ?>
                      </label></td>
                  </tr>
                  <?php } ?>
                </table>
              </div>
              <br />
              <?php } ?>
              <?php if ($option['type'] == 'text') { ?>
              <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                <?php if ($option['required']) { ?>
                <span class="required">*</span>
                <?php } ?>
                <b><?php echo $option['name']; ?>:</b><br />
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
              </div>
              <br />
              <?php } ?>
              <?php if ($option['type'] == 'textarea') { ?>
              <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                <?php if ($option['required']) { ?>
                <span class="required">*</span>
                <?php } ?>
                <b><?php echo $option['name']; ?>:</b><br />
                <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
              </div>
              <br />
              <?php } ?>
              <?php if ($option['type'] == 'file') { ?>
              <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                <?php if ($option['required']) { ?>
                <span class="required">*</span>
                <?php } ?>
                <b><?php echo $option['name']; ?>:</b><br />
                <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
                <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
              </div>
              <br />
              <?php } ?>
              <?php if ($option['type'] == 'date') { ?>
              <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                <?php if ($option['required']) { ?>
                <span class="required">*</span>
                <?php } ?>
                <b><?php echo $option['name']; ?>:</b><br />
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
              </div>
              <br />
              <?php } ?>
              <?php if ($option['type'] == 'datetime') { ?>
              <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                <?php if ($option['required']) { ?>
                <span class="required">*</span>
                <?php } ?>
                <b><?php echo $option['name']; ?>:</b><br />
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
              </div>
              <br />
              <?php } ?>
              <?php if ($option['type'] == 'time') { ?>
              <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                <?php if ($option['required']) { ?>
                <span class="required">*</span>
                <?php } ?>
                <b><?php echo $option['name']; ?>:</b><br />
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
              </div>
              <br />
              <?php } ?>
              <?php } ?>
            </div>
            <?php } ?>
            <div class="product_cart">
              <div class="qty">
                <span><?php echo $text_qty; ?></span>
                <label>
                  <input id="qty" class="w30" type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
                  <a href="javascript:void(0);" class="qtyBtn mines"></a>
                  <a href="javascript:void(0);" class="qtyBtn plus"></a>
                  <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
                </label>
                &nbsp;
                <a class="add_product"><em></em>Add to Cart</a>
                <span class="links"><a onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a></span>
              </div>
              <?php if ($minimum > 1) { ?>
              <div class="minimum"><?php echo $text_minimum; ?></div>
              <?php } ?>
            </div>
            <div class="social_btns"><!-- AddThis Button BEGIN -->
                <div class="addthis_toolbox addthis_default_style">
                  <a class="addthis_button_compact"><?php echo $text_share; ?></a>
                  <a class="addthis_button_email"></a><a class="addthis_button_print"></a>
                  <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a>
                </div>
                <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
                <!-- AddThis Button END --> 
            </div>
          </div>
          <div class="responsive-tabs fw_page">
              <h2><?php echo $tab_description; ?></h2>
              <div>
                <div class="inner"><?php echo $description; ?></div>
              </div>
              <?php if ($attribute_groups) { ?>
              <h2><?php echo $tab_attribute; ?></h2>
              <div>
                <?php if ($attribute_groups) { ?>
                <div id="tab-attribute" class="inner">
                  <table class="attribute inner">
                    <?php foreach ($attribute_groups as $attribute_group) { ?>
                    <thead>
                      <tr>
                        <td colspan="2"><?php echo $attribute_group['name']; ?></td>
                      </tr>
                    </thead>
                    <tbody>
                      <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                      <tr>
                        <td><?php echo $attribute['name']; ?></td>
                        <td><?php echo $attribute['text']; ?></td>
                      </tr>
                      <?php } ?>
                    </tbody>
                    <?php } ?>
                  </table>
                </div>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($review_status) { ?>
              <h2><?php echo $tab_review; ?></h2>
              <div>
                <div class="inner">
                  <div id="tab-review" class="tab-content">
                    <div id="review"></div>
                    <div class="qty_review" id="review-title"><strong><?php echo $text_write; ?></strong></div>
                    <br />
                    <b><?php echo $entry_name; ?></b><br />
                    <input type="text" name="name" value="" />
                    <br />
                    <br />
                    <b><?php echo $entry_review; ?></b>
                    <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
                    <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
                    <br />
                    <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<span><?php echo $entry_good; ?></span><br />
                    <br />
                    <b><?php echo $entry_captcha; ?></b><br />
                    <input type="text" name="captcha" value="" />
                    <br /><br />
                    <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
                    <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
                      
                  </div>
          </div>
        </div>
        <?php } ?>
      </div>

      <?php if ($products) { ?>
      <div class="related_products">
        <h2 class="pink ind"><?php echo $tab_related; ?></h2>
        <ul id="category" class="grid last bd_n related">
          <?php foreach ($products as $product) { ?>
          <li>
            <div>
              <?php if ($product['thumb']) { ?>
              <figure><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></figure>
              <?php } ?>
              <div>
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <?php if ($product['price']) { ?>
                <div class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                  <?php } ?>
                </div>
                <?php } ?>
                <?php if ($product['rating']) { ?>
                <div class="rating"><img src="catalog/view/theme/kids/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                <?php } ?>
                <div class="product_buttons">
                  <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="add_to_cart"></a>
                  <a href="<?php echo $product['href']; ?>" class="detail_view">Details</a>
                </div> 
              </div>
            </div>
          </li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>

        </article>
        <?php echo $column_right; ?>
      </div>
    


      <?php if ($tags) { ?>
      <div class="tags"><a><b><?php echo $text_tags; ?></b></a>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </div>
      <?php } ?>  
      <?php echo $content_bottom; ?>
    </article>

</section>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
//--></script> 
<script type="text/javascript"><!--
$('.add_product').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product_page input[type=\'text\'], .product_page input[type=\'hidden\'], .product_page input[type=\'radio\']:checked, .product_page input[type=\'checkbox\']:checked, .product_page select, .product_page textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/kids/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/kids/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/kids/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script> 
<?php echo $footer; ?>