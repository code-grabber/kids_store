<div class="row latest_product_box">
  <article class="grid_12">
    <h2 class="ind"><?php echo $heading_title; ?></h2>
    <div class="carousel_box list_carousel responsive">
      <a class="carousel_btn car_prev" id="car_prev1" href="#"></a>
      <a class="carousel_btn car_next" id="car_next1" href="#"></a>
      <ul id="latest_products">
        <?php foreach ($products as $product) { ?>
        <li>
          <div class="lat_product">
            <div class="inner">
              <?php if ($product['thumb']) { ?>
              <figure><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></figure>
              <?php } ?>
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <?php if ($product['price']) { ?>
              <div class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php } ?>
              </div>
              <?php } ?>
              <div class="product_buttons"><a class="add_to_cart" onclick="addToCart('<?php echo $product['product_id']; ?>');" /><a class="detail_view" href="<?php echo $product['href']; ?>">Details</a></div>
            </div>
          </div>
        </li>
        <?php } ?>
      </ul>
    </div>
  </article>
</div>