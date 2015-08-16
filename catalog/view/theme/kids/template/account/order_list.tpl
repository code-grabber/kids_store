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
      <?php if ($orders) { ?>
      
      <div class="table_wrap">
        <table class="order_table">
          <tr>
            <th><?php echo $text_order_id; ?></th>
            <th><?php echo $text_status; ?></th>
            <th><?php echo $text_date_added; ?></th>
            <th><?php echo $text_products; ?></th>
            <th><?php echo $text_customer; ?></th>
            <th colspan="2"><?php echo $text_total; ?></th>
          </tr>
          <?php foreach ($orders as $order) { ?>
          <tr>
            <td>#<?php echo $order['order_id']; ?></td>
            <td><?php echo $order['status']; ?></td>
            <td><?php echo $order['date_added']; ?></td>
            <td><?php echo $order['products']; ?></td>
            <td><?php echo $order['name']; ?></td>
            <td><?php echo $order['total']; ?></td>
            <td><a href="<?php echo $order['href']; ?>"><img src="catalog/view/theme/kids/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a>&nbsp;&nbsp;<a href="<?php echo $order['reorder']; ?>"><img src="catalog/view/theme/kids/image/reorder.png" alt="<?php echo $button_reorder; ?>" title="<?php echo $button_reorder; ?>" /></a></td>
          </tr>
          <?php } ?>
        </table>
      </div>
      <br>
      <div class="pagination"><?php echo $pagination; ?></div>
      <?php } else { ?>
      <div class="content"><?php echo $text_empty; ?></div>
      <?php } ?>
      <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?>
    </article>
    <?php echo $column_right; ?>
  </div>
</section>
<?php echo $footer; ?>