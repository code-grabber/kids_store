<?php echo $header; ?>
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
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <p><?php echo $text_email; ?></p>
        <h3 class="ext_title"><?php echo $text_your_email; ?></h3>
        <div class="content">
          <table class="form">
            <tr>
              <td><?php echo $entry_email; ?></td>
              <td class="pc70"><input type="text" name="email" value="" /></td>
            </tr>
          </table>
        </div>
        <div class="buttons">
          <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
          <div class="right">
            <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?>
    </article>
    <?php echo $column_right; ?>
  </div>
</section>
<?php echo $footer; ?>