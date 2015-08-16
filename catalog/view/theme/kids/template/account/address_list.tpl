<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
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
      <h3><?php echo $text_address_book; ?></h3>
      <?php foreach ($addresses as $result) { ?>
      <div class="content">
        <table style="width: 100%;">
          <tr>
            <td><?php echo $result['address']; ?></td>
            <td style="text-align: right;"><a href="<?php echo $result['update']; ?>" class="button"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="button"><?php echo $button_delete; ?></a></td>
          </tr>
        </table>
      </div>
      <?php } ?>
      <div class="buttons">
        <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
        <div class="right"><a href="<?php echo $insert; ?>" class="button"><?php echo $button_new_address; ?></a></div>
      </div>
      <?php echo $content_bottom; ?>
    </article>
    <?php echo $column_right; ?>
  </div>
</section>
<?php echo $footer; ?>