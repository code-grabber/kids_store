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
      <p><?php echo $text_total; ?><b> <?php echo $total; ?></b>.</p>
      <table class="list">
        <thead>
          <tr>
            <td class="left bold"><?php echo $column_date_added; ?></td>
            <td class="left bold"><?php echo $column_description; ?></td>
            <td class="right bold"><?php echo $column_amount; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php if ($transactions) { ?>
          <?php foreach ($transactions  as $transaction) { ?>
          <tr>
            <td class="left"><?php echo $transaction['date_added']; ?></td>
            <td class="left"><?php echo $transaction['description']; ?></td>
            <td class="right"><?php echo $transaction['amount']; ?></td>
          </tr>
          <?php } ?>
          <?php } else { ?>
          <tr>
            <td class="center" colspan="5"><?php echo $text_empty; ?></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
      <div class="pagination"><?php echo $pagination; ?></div>
      <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?>
    </article>
    <?php echo $column_right; ?>
  </div>
</section>
<?php echo $footer; ?>