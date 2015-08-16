<?php echo $header; ?>
<section id="content" class="cont_pad">
  <div class="breadcrump">
    <ul>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
    </ul>
  </div>
  <div class="row">
    <article class="grid_12">
      <h2 class="ind1"><?php echo $heading_title; ?></h2>
      <div class="content"><?php echo $text_error; ?></div>
      <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
    </article>
  </div>
</section>
<?php echo $footer; ?>