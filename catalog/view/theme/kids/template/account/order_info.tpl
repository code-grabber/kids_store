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
      <ul class="table_lists">
        <li>
          <div class="table_wrap">
            <table class="order_table">
              <tr>
                <th colspan="2"><?php echo $text_order_detail; ?></th>
              </tr>
              <tr>
                <td>
                  <dl>
                    <dd>
                      <?php if ($invoice_no) { ?>
                  <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
                  <?php } ?>
                  <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
                  <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?>
                    </dd>
                  </dl>
                </td>
                <td>
                  <dl>
                    <dd>
                      <?php if ($payment_method) { ?>
                  <b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?><br />
                  <?php } ?>
                  <?php if ($shipping_method) { ?>
                  <b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
                  <?php } ?>
                    </dd>
                  </dl>
                </td>
              </tr>
            </table>
          </div>
        </li>
        <li>
          <div class="table_wrap">
            <table class="order_table var2">
              <tr>
                <th><?php echo $text_payment_address; ?></th>
                <?php if ($shipping_address) { ?>
                <th><?php echo $text_shipping_address; ?></th>
                <?php } ?>
              </tr>
              <tr>
                <td>
                  <dl>
                    <dd><?php echo $payment_address; ?></dd>
                  </dl>
                </td>
                <?php if ($shipping_address) { ?>
                <td>
                  <dl>
                    <dd><?php echo $shipping_address; ?></dd>
                  </dl>
                </td>
                <?php } ?>
              </tr>
            </table>
          </div>
        </li>
        <li>
          <div class="table_wrap">
            <table class="order_table">
              <tr>
                <th><?php echo $column_name; ?></th>
                <th><?php echo $column_model; ?></th>
                <th><?php echo $column_quantity; ?></th>
                <th><?php echo $column_price; ?></th>
                <th colspan="2"><?php echo $column_total; ?></th>
              </tr>
              <?php foreach ($products as $product) { ?>
              <tr>
                <td>
                  <dl>
                    <dd>
                      <?php echo $product['name']; ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <br />
                  &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                    </dd>
                  </dl>
                </td>
                <td>
                  <dl>
                    <dd><?php echo $product['model']; ?></dd>
                  </dl>
                </td>
                <td>
                  <dl>
                    <dd><?php echo $product['quantity']; ?></dd>
                  </dl>
                </td>
                <td>
                  <dl>
                    <dd><?php echo $product['price']; ?></dd>
                  </dl>
                </td>
                <td>
                  <dl>
                    <dd><?php echo $product['total']; ?></dd>
                  </dl>
                </td>
                <td>
                  <dl>
                    <dd>
                      <a href="<?php echo $product['return']; ?>"><img src="catalog/view/theme/kids/image/return.png" alt="<?php echo $button_return; ?>" title="<?php echo $button_return; ?>" /></a>
                    </dd>
                  </dl>
                </td>
              </tr>
              <?php } ?>
              <?php foreach ($vouchers as $voucher) { ?>
                <tr>
                  <dl>
                    <dd><?php echo $voucher['description']; ?></dd>
                  </dl>
                  <dl>
                    <dd></dd>
                  </dl>
                  <dl>
                    <dd>1</dd>
                  </dl>
                  <dl>
                    <dd><?php echo $voucher['amount']; ?></dd>
                  </dl>
                  <dl>
                    <dd><?php echo $voucher['amount']; ?></dd>
                  </dl>
                  <dl>
                    <dd></dd>
                  </dl>
                </tr>
              <?php } ?>
              <?php foreach ($totals as $total) { ?>
              <tr>
                <td colspan="3"></td>
                <td class="right"><b><?php echo $total['title']; ?>:</b></td>
                <td class="right"><?php echo $total['text']; ?></td>
                <?php if ($products) { ?>
                <td></td>
                <?php } ?>
              </tr>
              <?php } ?>
            </table>
          </div>
        </li>
        <li>
          <?php if ($comment) { ?>
          <div class="table_wrap">
            <table class="order_table">
              <tr>
                <th><?php echo $text_comment; ?></th>
              </tr>
              <tr>
                <td>
                  <dl>
                    <dd><?php echo $comment; ?></dd>
                  </dl>
                </td>
              </tr>
            </table>
          </div>
          <?php } ?>
        </li>
      </ul>
      <?php if ($histories) { ?>
      <h2 class="ind1"><?php echo $text_history; ?></h2>
      <ul class="table_lists">
        <li>
          <div class="table_wrap">
            <table class="order_table">
              <tr>
                <th><?php echo $column_date_added; ?></th>
                <th><?php echo $column_status; ?></th>
                <th><?php echo $column_comment; ?></th>
              </tr>
              <?php foreach ($histories as $history) { ?>
              <tr>
                <td>
                  <dl>
                    <dd><?php echo $history['date_added']; ?></dd>
                  </dl>
                </td>
                <td>
                  <dl>
                    <dd><?php echo $history['status']; ?></dd>
                  </dl>
                </td>
                <td>
                  <dl>
                    <dd><?php echo $history['comment']; ?></dd>
                  </dl>
                </td>
              </tr>
              <?php } ?>
            </table>
          </div>
        </li>
      </ul>
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