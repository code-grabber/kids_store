<?php echo $header; ?><?php //echo $column_left; ?><?php //echo $column_right; ?>
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
    <article class="grid_8">
      <h2 class="blue ind1"><?php echo $text_location; ?></h2>
       <figure class="img_wrap1 map_wrapper">
            <iframe id="map_canvas" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
        </figure>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="contact-info">
          <div class="content"><div class="left"><b><?php echo $text_address; ?></b><br />
            <?php echo $store; ?><br />
            <?php echo $address; ?></div>
          <div class="right">
            <?php if ($telephone) { ?>
            <b><?php echo $text_telephone; ?></b><br />
            <?php echo $telephone; ?><br />
            <br />
            <?php } ?>
            <?php if ($fax) { ?>
            <b><?php echo $text_fax; ?></b><br />
            <?php echo $fax; ?>
            <?php } ?>
          </div>
        </div>
        </div>
    </article>
    <article class="grid_4">
        <h3 class="ind4 green1"><?php echo $text_contact; ?></h3>
        <div id="contact-form" class="content">
        <b><?php echo $entry_name; ?></b><br />
        <input type="text" name="name" value="<?php echo $name; ?>" />
        <br />
        <?php if ($error_name) { ?>
        <span class="error"><?php echo $error_name; ?></span>
        <?php } ?>
        <br />
        <b><?php echo $entry_email; ?></b><br />
        <input type="text" name="email" value="<?php echo $email; ?>" />
        <br />
        <?php if ($error_email) { ?>
        <span class="error"><?php echo $error_email; ?></span>
        <?php } ?>
        <br />
        <b><?php echo $entry_enquiry; ?></b><br />
        <textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
        <br />
        <?php if ($error_enquiry) { ?>
        <span class="error"><?php echo $error_enquiry; ?></span>
        <?php } ?>
        <br />
        <b><?php echo $entry_captcha; ?></b><br />
        <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
        <br /><br />
        <p><img src="index.php?route=information/contact/captcha" alt="" /></p>
        <?php if ($error_captcha) { ?>
        <span class="error"><?php echo $error_captcha; ?></span>
        <?php } ?>
        </div>
        <div class="buttons">
          <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
        </div>
      </form>
      <?php echo $content_bottom; ?>
    </article>
    </div>
</section>
<?php echo $footer; ?>