<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
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
    <article class="grid_8">
      <h2 class="ind1"><?php echo $heading_title; ?></h2>
      <h3><?php echo $text_my_account; ?></h3>
      <div class="content">
        <ul>
          <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
          <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
          <li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
        </ul>
      </div>
      <h2><?php echo $text_my_tracking; ?></h2>
      <div class="content">
        <ul>
          <li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
        </ul>
      </div>
      <h2><?php echo $text_my_transactions; ?></h2>
      <div class="content">
        <ul>
          <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
        </ul>
      </div>
      <?php echo $content_bottom; ?>
    </article>
    <?php echo $column_right; ?>
  </div>
</section>
<?php echo $footer; ?>