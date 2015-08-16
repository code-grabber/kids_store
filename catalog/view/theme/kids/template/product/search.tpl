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
  <div class="row">
    <?php echo $column_left; ?>
    <article class="grid_12">
      <h2 class="ind1"><?php echo $heading_title; ?></h2>
      <b><?php echo $text_critea; ?></b>
      <div class="content">
        <p><?php echo $entry_search; ?>
          <?php if ($search) { ?>
          <input type="text" name="search" value="<?php echo $search; ?>" />
          <?php } else { ?>
          <input type="text" name="search" value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
          <?php } ?>
          <select name="category_id">
            <option value="0"><?php echo $text_category; ?></option>
            <?php foreach ($categories as $category_1) { ?>
            <?php if ($category_1['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_2['children'] as $category_3) { ?>
            <?php if ($category_3['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
          </select>
          <?php if ($sub_category) { ?>
          <input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
          <?php } else { ?>
          <input type="checkbox" name="sub_category" value="1" id="sub_category" />
          <?php } ?>
          <label for="sub_category"><?php echo $text_sub_category; ?></label>
        <?php if ($description) { ?>
        <input type="checkbox" name="description" value="1" id="description" checked="checked" />
        <?php } else { ?>
        <input type="checkbox" name="description" value="1" id="description" />
        <?php } ?>
        <label for="description"><?php echo $entry_description; ?></label>
        </p>
        <div class="right"><input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" /></div>
      </div>
      <h3><?php echo $text_search; ?></h3>
      <?php if ($products) { ?>
      <div class="sorting_block">
        <form id="sort">
          <label class="criterion">
            <span>Sort by:</span>
            <ul class="drop3">
            </ul>
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <script>$('.drop3').before('<a href="<?php echo $sorts['href']; ?>" class="slct3"><?php echo $sorts['text']; ?></a>');</script>
            <?php } else { ?>
            <script>$('.drop3').append('<li><a href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a></li>');</script>
            <?php } ?>
            <?php } ?>
            <div class="clear"></div>
          </label>
          <label class="show">
            <span>Show:</span>
            <ul class="drop4">
            </ul>
            <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
                <script>$('.drop4').before('<a href="<?php echo $limits['href']; ?>" class="slct4"><?php echo $limits['text']; ?></a>');</script>
              <?php }else{ ?>
                <script>$('.drop4').append('<li><a href="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></a></li>');</script>
              <?php } ?>
            <?php } ?>  
            <div class="clear"></div>
          </label>
          <div class="clear"></div>
        </form>
        <form id="view">
          <label>
            <span>View as:</span>
            <a class="active view_icon1" href="javascript:display('grid');" class="view_icon1"></a>
            <a href="javascript:display('list');" class="view_icon2"></a>
          </label>
        </form>
        <div class="clear"></div>
      </div>
      <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
      <ul id="category" class="grid">
        <?php foreach ($products as $product) { ?>
        <li>
          <div>
            <?php if ($product['thumb']) { ?>
            <figure><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></figure>
            <?php } ?>
            <div>
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <div class="description"><?php echo $product['description']; ?></div>
              <?php if ($product['price']) { ?>
              <div class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <br />
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
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
      <div class="categories_nav wrapper"><?php echo $pagination; ?></div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <div class="content"><?php echo $text_empty; ?></div>
      <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?>
    </article>
      <?php echo $column_right; ?>
  </div>
</section>
<script type="text/javascript"><!--
$('#content input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content input[name=\'search\']').attr('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').attr('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

function display(view) {
  if (view == 'list') {
    $('.grid').attr('class', 'list');
    $.totalStorage('display', 'list'); 
  } else {
    $('.list').attr('class', 'grid');
    $.totalStorage('display', 'grid');
  }
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 
<?php echo $footer; ?>