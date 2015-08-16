<?php if (count($currencies) > 1) { ?>
<form id="currency-form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <a href="#" class="slct2"><span><?php echo $text_currency; ?></span></a>
    <ul class="drop2">
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $currency_code) { ?>
    <?php if ($currency['symbol_left']) { ?>
    <li><a><b><?php echo $currency['symbol_left']; ?> <?php echo $currency['title']; ?></b></a></li>
    <?php } else { ?>
    <li><a><b><?php echo $currency['title']; ?> <?php echo $currency['symbol_right']; ?></b></a></li>
    <?php } ?>
    <?php } else { ?>
    <?php if ($currency['symbol_left']) { ?>
    <li><a onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency-form').submit();"><?php echo $currency['symbol_left']; ?> <?php echo $currency['title']; ?></a></li>
    <?php } else { ?>
    <li><a onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency-form').submit();"><?php echo $currency['symbol_right']; ?> <?php echo $currency['title']; ?></a></li>
    <?php } ?>
    <?php } ?>
    <?php } ?>
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </ul>
</form>
<?php } ?>