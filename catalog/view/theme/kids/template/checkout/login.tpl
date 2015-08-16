<div class="grid_6">
  <div class="pad_box1 separate">
    <h3 class="green2 bg_none"><?php echo $text_new_customer; ?></h3>
    <p><?php echo $text_checkout; ?></p>
    <label for="register">
      <?php if ($account == 'register') { ?>
      <input type="radio" name="account" value="register" id="register" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="account" value="register" id="register" />
      <?php } ?>
      <b><?php echo $text_register; ?></b></label>
    <br />
    <?php if ($guest_checkout) { ?>
    <label for="guest">
      <?php if ($account == 'guest') { ?>
      <input type="radio" name="account" value="guest" id="guest" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="account" value="guest" id="guest" />
      <?php } ?>
      <b><?php echo $text_guest; ?></b></label>
    <br />
    <?php } ?>
    <br />
    <p><?php echo $text_register_account; ?></p>
    <input type="button" value="<?php echo $button_continue; ?>" id="button-account" class="button" />
  </div>
</div>
<div id="login" class="grid_4">
  <div class="pad_box2">
    <h3 class="pink1 ind bg_none"><?php echo $text_returning_customer; ?></h3>
    <p><?php echo $text_i_am_returning_customer; ?></p>
    <b><?php echo $entry_email; ?></b><br />
    <input type="text" name="email" value="" />
    <br />
    <br />
    <b><?php echo $entry_password; ?></b><br />
    <input type="password" name="password" value="" />
    <br />
    <a class="forgotten" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
    <br />
    <input type="button" value="<?php echo $button_login; ?>" id="button-login" class="form_btn log_in" />
  </div>
</div>