<?php echo $header; ?>
<?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/kids/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/kids/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/kids/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<section id="content" class="cont_pad">
  <?php echo $content_top; ?>
  <div class="breadcrump">
    <ul>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
    </ul>
  </div>
  <div class="row">
    <?php echo $column_left; ?>
    <article class="grid_12">
      <h2 class="blue ind2"><?php echo $heading_title; ?>
        <?php if ($weight) { ?>
        &nbsp;(<?php echo $weight; ?>)
        <?php } ?>
      </h2>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="table_wrap p4">
          <table class="order_table confirm">
            <tr>
              <th class="width_7"><?php echo $column_name; ?></th>
              <th class="width_4"><?php echo $column_model; ?></th>
              <th class="width_8"><?php echo $column_quantity; ?></th>
              <th class="width_9"><?php echo $column_price; ?></th>
              <th class="width_9 last_th"><?php echo $column_total; ?></th>
            </tr>
            <tbody>
              <?php foreach ($products as $product) { ?>
              <tr>
                <td>
                  <div class="ext_box confirm_product">
                    <figure>
                      <?php if ($product['thumb']) { ?>
                      <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                      <?php } ?>
                    </figure>
                    <div>
                      <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                      <?php if (!$product['stock']) { ?>
                      <span class="stock">***</span>
                      <?php } ?>
                      <div>
                        <?php foreach ($product['option'] as $option) { ?>
                        - <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                        <?php } ?>
                      </div>
                      <?php if ($product['reward']) { ?>
                      <small><?php echo $product['reward']; ?></small>
                      <?php } ?>
                    </div>
                  </div> 
                </td>
                <td><?php echo $product['model']; ?></td>
                <td class="confirm_quantity">
                  <input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
                  &nbsp;
                  <input class="update-button" type="image" src="catalog/view/theme/kids/image/update.png"  />                    
                    <a onclick="updateButton();" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" class="done"></a>
                    <a href="<?php echo $product['remove']; ?>" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" class="delete"></a>
                </td>
                <td><?php echo $product['price']; ?></td>
                <td><?php echo $product['total']; ?></td>
              </tr>
              <?php } ?>
              <?php foreach ($vouchers as $vouchers) { ?>
              <tr>
                <td><?php echo $vouchers['description']; ?></td>
                <td></td>
                <td class="confirm_quantity"><input type="text" name="" value="1" size="1" disabled="disabled" />
                  &nbsp;
                  <a href="<?php echo $vouchers['remove']; ?>" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" class="delete"></a>
                  </td>
                <td><?php echo $vouchers['amount']; ?></td>
                <td><?php echo $vouchers['amount']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </form>
      <?php if ($coupon_status || $voucher_status || $reward_status || $shipping_status) { ?>
      <h3><?php echo $text_next; ?></h3>
      <div class="content">
        <p><?php echo $text_next_choice; ?></p>
        <table class="radio">
          <?php if ($coupon_status) { ?>
          <tr class="highlight">
            <td><?php if ($next == 'coupon') { ?>
              <input type="radio" name="next" value="coupon" id="use_coupon" checked="checked" />
              <?php } else { ?>
              <input type="radio" name="next" value="coupon" id="use_coupon" />
              <?php } ?></td>
            <td><label for="use_coupon"><?php echo $text_use_coupon; ?></label></td>
          </tr>
          <?php } ?>
          <?php if ($voucher_status) { ?>
          <tr class="highlight">
            <td><?php if ($next == 'voucher') { ?>
              <input type="radio" name="next" value="voucher" id="use_voucher" checked="checked" />
              <?php } else { ?>
              <input type="radio" name="next" value="voucher" id="use_voucher" />
              <?php } ?></td>
            <td><label for="use_voucher"><?php echo $text_use_voucher; ?></label></td>
          </tr>
          <?php } ?>
          <?php if ($reward_status) { ?>
          <tr class="highlight">
            <td><?php if ($next == 'reward') { ?>
              <input type="radio" name="next" value="reward" id="use_reward" checked="checked" />
              <?php } else { ?>
              <input type="radio" name="next" value="reward" id="use_reward" />
              <?php } ?></td>
            <td><label for="use_reward"><?php echo $text_use_reward; ?></label></td>
          </tr>
          <?php } ?>
          <?php if ($shipping_status) { ?>
          <tr class="highlight">
            <td><?php if ($next == 'shipping') { ?>
              <input type="radio" name="next" value="shipping" id="shipping_estimate" checked="checked" />
              <?php } else { ?>
              <input type="radio" name="next" value="shipping" id="shipping_estimate" />
              <?php } ?></td>
            <td><label for="shipping_estimate"><?php echo $text_shipping_estimate; ?></label></td>
          </tr>
          <?php } ?>
        </table>
      </div>
      <div class="cart-module">
        <div id="coupon" class="content" style="display: <?php echo ($next == 'coupon' ? 'block' : 'none'); ?>;">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <?php echo $entry_coupon; ?>&nbsp;
            <input type="text" name="coupon" value="<?php echo $coupon; ?>" />
            <input type="hidden" name="next" value="coupon" />
            &nbsp;
            <input type="submit" value="<?php echo $button_coupon; ?>" class="button" />
          </form>
        </div>
        <div id="voucher" class="content" style="display: <?php echo ($next == 'voucher' ? 'block' : 'none'); ?>;">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <?php echo $entry_voucher; ?>&nbsp;
            <input type="text" name="voucher" value="<?php echo $voucher; ?>" />
            <input type="hidden" name="next" value="voucher" />
            &nbsp;
            <input type="submit" value="<?php echo $button_voucher; ?>" class="button" />
          </form>
        </div>
        <div id="reward" class="content" style="display: <?php echo ($next == 'reward' ? 'block' : 'none'); ?>;">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <?php echo $entry_reward; ?>&nbsp;
            <input type="text" name="reward" value="<?php echo $reward; ?>" />
            <input type="hidden" name="next" value="reward" />
            &nbsp;
            <input type="submit" value="<?php echo $button_reward; ?>" class="button" />
          </form>
        </div>
        <div id="shipping" class="content" style="display: <?php echo ($next == 'shipping' ? 'block' : 'none'); ?>;">
          <p><?php echo $text_shipping_detail; ?></p>
          <table>
            <tr>
              <td><span class="required">*</span> <?php echo $entry_country; ?></td>
              <td><select name="country_id">
                  <option value=""><?php echo $text_select; ?></option>
                  <?php foreach ($countries as $country) { ?>
                  <?php if ($country['country_id'] == $country_id) { ?>
                  <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><span class="required">*</span> <?php echo $entry_zone; ?></td>
              <td><select name="zone_id">
                </select></td>
            </tr>
            <tr>
              <td><span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></td>
              <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" /></td>
            </tr>
          </table>
          <input type="button" value="<?php echo $button_quote; ?>" id="button-quote" class="button" />
        </div>
      </div>
      <?php } ?>
      <div class="cart-total">
        <table id="total">
          <?php foreach ($totals as $total) { ?>
          <tr>
            <td class="right"><b><?php echo $total['title']; ?>:</b></td>
            <td class="right"><?php echo $total['text']; ?></td>
          </tr>
          <?php } ?>
        </table>
      </div>
      <div class="clear"></div>
      <div class="buttons">
        <div class="right"><a href="<?php echo $checkout; ?>" class="button form_btn log_in"><?php echo $button_checkout; ?></a></div>
        <div class="center"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_shopping; ?></a></div>
      </div>
      <?php echo $content_bottom; ?>
    </article>
    <?php echo $column_right; ?>
  </div>
</section>
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});
//--></script>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('a.done').live('click', function() {
  $('.update-button').click();
});
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/kids/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/kids/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h3><?php echo $text_shipping_method; ?></h3>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <table class="radio">';
				
				for (i in json['shipping_method']) {
					html += '<tr>';
					html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
					html += '</tr>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<tr class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
							} else {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
							}
								
							html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
							html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
							html += '</tr>';
						}		
					} else {
						html += '<tr>';
						html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
						html += '</tr>';						
					}
				}
				
				html += '  </table>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/kids/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>
