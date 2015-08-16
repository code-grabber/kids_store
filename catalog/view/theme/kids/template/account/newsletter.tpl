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
    <article class="grid_8">
      <h2 class="ind1"><?php echo $heading_title; ?></h2>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="content">
          <table class="form">
            <tr>
              <td><?php echo $entry_newsletter; ?></td>
              <td><?php if ($newsletter) { ?>
                <input type="radio" name="newsletter" value="1" checked="checked" />
                <?php echo $text_yes; ?>&nbsp;
                <input type="radio" name="newsletter" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="newsletter" value="1" />
                <?php echo $text_yes; ?>&nbsp;
                <input type="radio" name="newsletter" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?></td>
            </tr>
          </table>
        </div>
        <div class="buttons">
          <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
          <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
        </div>
      </form>
      <?php echo $content_bottom; ?>
    </article>
    <?php echo $column_right; ?>
  </div>
</section>
<?php echo $footer; ?>