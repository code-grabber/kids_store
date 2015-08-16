<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />

<title><?php echo $title; ?></title>

<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/kids/stylesheet/style.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/theme/kids/js/jquery.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<script src="catalog/view/theme/kids/js/script.js"></script>
  <!--[if lt IE 8]>
   <div style=' clear: both; text-align:center; position: relative;'>
     <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
       <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
    </a>
  </div>
<![endif]-->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="catalog/view/theme/kids/js/html5.js"></script>
      <link rel="stylesheet" type="text/css" media="screen" href="catalog/view/theme/kids/stylesheet/ie.css">
    <![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
<div class="main">
<header>
  <div class="header_top">
    <div class="container">
      <ul class="block_language">
        <li class="language">
          <?php echo $language; ?>
        </li>
        <li class="currency_item">
          <?php echo $currency; ?>
        </li>
      </ul>
      <ul class="block_headerlinks">
         <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
         <li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
         <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
         <li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
         <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
       </ul>
      <div class="clear"></div>
    </div>
  </div>

  <div class="container">
  <div class="header_bottom">
  <?php if ($logo) { ?>
<h1><a class="logo" href="<?php echo $home; ?>" style="background: url('<?php echo $logo; ?>') 0 0 no-repeat; background-size: cover;"><?php echo $name; ?></a></h1>

  <?php } ?>

  <div class="call_us">
    call us toll free: <span>1-800-987-654321</span>
  </div>

  <?php echo $cart; ?>

    <div class="clear"></div>
    <div id="welcome">
      <?php if (!$logged) { ?>
      <?php echo $text_welcome; ?>
      <?php } else { ?>
      <?php echo $text_logged; ?>
      <?php } ?>
    </div>
  </div>
  </div>
</header>
<div class="container">
<?php if ($categories) { ?>
  <nav class="main-menu">
    <div id="menu-icon" class="">Menu</div>
    <ul class="sf-menu">
      <?php foreach ($categories as $category) { ?>
      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php if ($category['children']) { ?>
          <?php for ($i = 0; $i < count($category['children']);) { ?>
          <ul>
            <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
            <?php for (; $i < $j; $i++) { ?>
            <?php if (isset($category['children'][$i])) { ?>
              <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
        <?php } ?>
      </li>
      <?php } ?>
      <li><a href="index.php?route=information/contact">Контакты</a></li>
    </ul>
    <div id="search">
          <label>
            <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" onBlur="if(this.value=='') this.value='<?php echo $search; ?>'" onFocus="if(this.value =='<?php echo $search; ?>' ) this.value=''" />
            <a class="button-search"></a>
          </label>
        </div>
    <div class="clear"></div>
  </nav>
<?php } ?>
<div id="notification"></div>

<script type="text/javascript"><!--
$('#search input[name=\'search\']').keydown(function(e) {
  if (e.keyCode == 13) {
    $('.button-search').trigger('click');
  }
});
-->
</script>

<div id="panel">
  <a href="#" class="panel_button"></a>
  <div class="inner">
    <h5>Theme settings</h5>
    <p>Background color:</p>
    <ul class="tools_list bg_colors">
      <li>
        <a href="javascript:set_bg_color(bgcolor1);" class="color1"><span></span></a>
        <a href="javascript:set_bg_color(bgcolor2);" class="color2"><span></span></a>
        <a href="javascript:set_bg_color(bgcolor3);" class="color3"><span></span></a>
      </li>
      <li>
        <a href="javascript:set_bg_color(bgcolor4);" class="color4"><span></span></a>
        <a href="javascript:set_bg_color(bgcolor5);" class="color5"><span></span></a>
        <a href="javascript:set_bg_color(bgcolor6);" class="color6"><span></span></a>
      </li>
    </ul>
    <p>Background pattern:</p>
    <ul class="tools_list pattern_bg">
      <li>
        <a href="javascript:set_bg_image(bgimage1);" class="pattern1"><span></span></a>
        <a href="javascript:set_bg_image(bgimage2);" class="pattern2"><span></span></a>
      </li>
      <li>
        <a href="javascript:set_bg_image(bgimage3);" class="pattern3"><span></span></a>
        <a href="javascript:set_bg_image(bgimage4);" class="pattern4"><span></span></a>
      </li>
    </ul>
    <div class="button_wrap1">
      <a href="javascript:reset();" class="button">Reset</a>
    </div>
  </div>
</div>