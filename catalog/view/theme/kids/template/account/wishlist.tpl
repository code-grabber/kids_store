<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/kids/image/close.png" alt="" class="close" /></div>
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
      <h2 class="blue ind2"><?php echo $heading_title; ?></h2>
      <?php if ($products) { ?>
      <div class="table_wrap">
        <table class="order_table wishlist">
            <tr>
              <th class="name_col"><?php echo $column_name; ?></th>
              <th class="model_col"><?php echo $column_model; ?></th>
              <th class="stock_col"><?php echo $column_stock; ?></th>
              <th class="price_col"><?php echo $column_price; ?></th>
              <th class="last_th"><?php echo $column_action; ?></th>
            </tr>
          <?php foreach ($products as $product) { ?>
            <tr>
              <td>
                <div class="ext_box confirm_product">
                  <?php if ($product['thumb']) { ?><figure><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a></figure><?php } ?>
                  <div>
                    <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  </div>
                </div>
              </td>
              <td><?php echo $product['model']; ?></td>
              <td><?php echo $product['stock']; ?></td>
              <td><?php if ($product['price']) { ?>
                <div class="price2">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
                  <?php } ?>
                </div>
                <?php } ?></td>
              <td>
                <a alt="<?php echo $button_cart; ?>" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="add_to_cart2"></a>
                <a alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" href="<?php echo $product['remove']; ?>" class="delete_item_cart"></a>
              </td>
            </tr>
          <?php } ?>
        </table>
      </div>
      <a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a>
      <?php } else { ?>
      <div class="content"><?php echo $text_empty; ?></div>
      <a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a>
      <?php } ?>
      <?php echo $content_bottom; ?>
    </article>
    <?php echo $column_right; ?>
  </div>
</section>
<?php echo $footer; ?>