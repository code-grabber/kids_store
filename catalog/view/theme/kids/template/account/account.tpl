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
          <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
        </ul>
      </div>
      <h3><?php echo $text_my_orders; ?></h3>
      <div class="content">
        <ul>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <?php if ($reward) { ?>
          <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
          <?php } ?>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
        </ul>
      </div>
      <h3><?php echo $text_my_newsletter; ?></h3>
      <div class="content">
        <ul>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
      <?php echo $content_bottom; ?>
    </article>
    <?php echo $column_right; ?>
  </div>
</section>
<?php echo $footer; ?> 