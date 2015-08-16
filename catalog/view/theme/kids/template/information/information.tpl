<?php echo $header; ?><?php //echo $column_left; ?><?php //echo $column_right; ?>
<section id="content" class="cont_pad">
  <?php echo $content_top; ?>
  <div class="breadcrump">
    <ul>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
    </ul>
  </div>
  <div>
    <h2 class="blue ind1"><?php echo $heading_title; ?></h2>
    <?php echo $description; ?>
    <div class="buttons">
      <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
    </div>
    <?php echo $content_bottom; ?>
  </div>
</section>
<?php echo $footer; ?>