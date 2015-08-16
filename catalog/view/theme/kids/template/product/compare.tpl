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
    <article class="grid_12">
      <h2 class="ind1"><?php echo $heading_title; ?></h2>
      <?php if ($products) { ?>
      <div class="table_wrap">
        <table class="compare-info order_table compare_table wishlist">
          <tbody>
            <tr>
              <td><?php echo $text_name; ?></td>
              <?php foreach ($products as $product) { ?>
              <td class="name"><a href="<?php echo $products[$product['product_id']]['href']; ?>"><?php echo $products[$product['product_id']]['name']; ?></a></td>
              <?php } ?>
            </tr>
            <tr>
              <td><?php echo $text_image; ?></td>
              <?php foreach ($products as $product) { ?>
              <td><?php if ($products[$product['product_id']]['thumb']) { ?>
                <img src="<?php echo $products[$product['product_id']]['thumb']; ?>" alt="<?php echo $products[$product['product_id']]['name']; ?>" />
                <?php } ?></td>
              <?php } ?>
            </tr>
            <tr>
              <td><?php echo $text_price; ?></td>
              <?php foreach ($products as $product) { ?>
              <td><?php if ($products[$product['product_id']]['price']) { ?>
                <?php if (!$products[$product['product_id']]['special']) { ?>
                <?php echo $products[$product['product_id']]['price']; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $products[$product['product_id']]['price']; ?></span> <span class="price-new"><?php echo $products[$product['product_id']]['special']; ?></span>
                <?php } ?>
                <?php } ?></td>
              <?php } ?>
            </tr>
            <tr>
              <td><?php echo $text_model; ?></td>
              <?php foreach ($products as $product) { ?>
              <td><?php echo $products[$product['product_id']]['model']; ?></td>
              <?php } ?>
            </tr>
            <tr>
              <td><?php echo $text_manufacturer; ?></td>
              <?php foreach ($products as $product) { ?>
              <td><?php echo $products[$product['product_id']]['manufacturer']; ?></td>
              <?php } ?>
            </tr>
            <tr>
              <td><?php echo $text_availability; ?></td>
              <?php foreach ($products as $product) { ?>
              <td><?php echo $products[$product['product_id']]['availability']; ?></td>
              <?php } ?>
            </tr>
      	  <?php if ($review_status) { ?>
            <tr>
              <td><?php echo $text_rating; ?></td>
              <?php foreach ($products as $product) { ?>
              <td><img src="catalog/view/theme/kids/image/stars-<?php echo $products[$product['product_id']]['rating']; ?>.png" alt="<?php echo $products[$product['product_id']]['reviews']; ?>" /><br />
                <?php echo $products[$product['product_id']]['reviews']; ?></td>
              <?php } ?>
            </tr>
            <?php } ?>
      	  <tr>
              <td><?php echo $text_summary; ?></td>
              <?php foreach ($products as $product) { ?>
              <td class="description"><?php echo $products[$product['product_id']]['description']; ?></td>
              <?php } ?>
            </tr>
            <tr>
              <td><?php echo $text_weight; ?></td>
              <?php foreach ($products as $product) { ?>
              <td><?php echo $products[$product['product_id']]['weight']; ?></td>
              <?php } ?>
            </tr>
            <tr>
              <td><?php echo $text_dimension; ?></td>
              <?php foreach ($products as $product) { ?>
              <td><?php echo $products[$product['product_id']]['length']; ?> x <?php echo $products[$product['product_id']]['width']; ?> x <?php echo $products[$product['product_id']]['height']; ?></td>
              <?php } ?>
            </tr>
          </tbody>
          <?php foreach ($attribute_groups as $attribute_group) { ?>
          <tbody>
            <tr>
              <td class="compare-attribute" colspan="<?php echo count($products) + 1; ?>"><?php echo $attribute_group['name']; ?></td>
            </tr>
          </tbody>
          <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
          <tbody>
            <tr>
              <td><?php echo $attribute['name']; ?></td>
              <?php foreach ($products as $product) { ?>
              <?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
              <td><?php echo $products[$product['product_id']]['attribute'][$key]; ?></td>
              <?php } else { ?>
              <td></td>
              <?php } ?>
              <?php } ?>
            </tr>
          </tbody>
          <?php } ?>
          <?php } ?>
          <tr>
            <td></td>
            <?php foreach ($products as $product) { ?>
            <td>

             
             <a alt="<?php echo $button_cart; ?>" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="add_to_cart2"></a>
              <a alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" href="<?php echo $product['remove']; ?>" class="delete_item_cart"></a>
            </td>
            <?php } ?>
          </tr>
        </table>
      </div>
      <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } else { ?>
      <div class="content"><?php echo $text_empty; ?></div>
      <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?>
    </article>
  </div>
</section>
<?php echo $footer; ?>