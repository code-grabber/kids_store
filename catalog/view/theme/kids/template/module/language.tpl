<?php if (count($languages) > 1) { ?>
<form id="languages-form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
	<a href="#" class="slct"><?php echo $text_language; ?></a>
  <ul class="drop">
    <?php foreach ($languages as $language) { ?>
    <li><a onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#languages-form').submit();"><em class="icon"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>"></em><?php echo $language['name']; ?></a></li>
    <?php } ?>
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </ul>
</form>
<?php } ?>