include('catalog/view/theme/kids/js/superfish.js');
include('catalog/view/theme/kids/js/jquery.carouFredSel-6.1.0.js');
include('catalog/view/theme/kids/js/jquery.touchSwipe.min.js');
include('catalog/view/theme/kids/js/jquery-ui.js');
include('catalog/view/theme/kids/js/jquery.tweet.js');
include('catalog/view/theme/kids/js/jquery.equalheights.js');
include('catalog/view/theme/kids/js/jquery.ui.totop.js');
include('catalog/view/theme/kids/js/jquery-easing-1.3.js')
include('catalog/view/theme/kids/js/layerslider/jQuery/jquery-easing-1.3.js')
include('catalog/view/theme/kids/js/layerslider/jQuery/jquery-transit-modified.js')
include('catalog/view/theme/kids/js/layerslider/js/layerslider.transitions.js')
include('catalog/view/theme/kids/js/layerslider/js/layerslider.kreaturamedia.jquery.js')
include('catalog/view/theme/kids/js/jquery.flexslider.js')
include('catalog/view/theme/kids/js/jquery.zoom.js')
include('catalog/view/theme/kids/js/responsiveTabs.js')
include('catalog/view/theme/kids/js/forms.js')
include('catalog/view/theme/kids/js/jquery.iosslider.js')
include('catalog/view/theme/kids/js/jquery.cookie.js')
include('catalog/view/theme/kids/js/jquery.rs.modal.js')
include('catalog/view/theme/kids/js/retina.js')

//----Include-Function----
function include(url){ 
  document.write('<script src="'+ url + '" type="text/javascript"></script>'); 
}


$(function(){
  
  $('.iosSlider').iosSlider({
    snapToChildren: true,
    desktopClickDrag: true,
    infiniteSlider: true,
    keyboardControls: true,
    navNextSelector: $('.next'),
    navPrevSelector: $('.prev'),
    navSlideSelector: $('.selectors .item'),
    onSlideChange: slideChange
  });
  
// IPad/IPhone
	var viewportmeta = document.querySelector && document.querySelector('meta[name="viewport"]'),
	ua = navigator.userAgent,

	gestureStart = function () {viewportmeta.content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6";},

	scaleFix = function () {
		if (viewportmeta && /iPhone|iPad/.test(ua) && !/Opera Mini/.test(ua)) {
			viewportmeta.content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0";
			document.addEventListener("gesturestart", gestureStart, false);
		}
	};
	
	scaleFix();
	// Menu Android
	if(window.orientation!=undefined){
    var regM = /ipod|ipad|iphone/gi,
     result = ua.match(regM)
    if(!result) {
     $('.sf-menu li, .block_language li').each(function(){
      if($(">ul", this)[0]){
       $(">a", this).toggle(
        function(){
         return false;
        },
        function(){
         window.location.href = $(this).attr("href");
        }
       );
      } 
     })
    }
   } 
});
var ua=navigator.userAgent.toLocaleLowerCase(),
 regV = /ipod|ipad|iphone/gi,
 result = ua.match(regV),
 userScale="";
if(!result){
 userScale=",user-scalable=0"
}
document.write('<meta name="viewport" content="width=device-width,initial-scale=1.0'+userScale+'">')

/******** Ajax Cart **********/
$(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $("#shopping_cart .cart_icon, #shopping_cart .cart_items").click(function(){
    $("#shopping_cart").toggleClass("active");
  });
  $(".slide_button").append("<em class='btn-arrow'></em>")
  
  //	Responsive layout, resizing the items
  $('#featured_products').carouFredSel({
  auto: false,
  responsive: true,
  width: '100%',		
  scroll: 1,
  prev: '#car_prev',
  next: '#car_next',
  pagination: false,
  mousewheel: true,
  items: {
  height: 'auto',
  width: '200',
  visible: {
  min: 1,
  max: 6
  }
  },
  swipe: {
    onMouse: true,
    onTouch: true
    }
  });
  $('#latest_products').carouFredSel({
  auto: false,
  responsive: true,
  width: '100%',		
  scroll: 1,
  prev: '#car_prev1',
  next: '#car_next1',
  pagination: false,
  mousewheel: true,
  items: {
  height: 'auto',
  width: '200',
  visible: {
  min: 1,
  max: 6
  }
  },
  swipe: {
    onMouse: true,
    onTouch: true
    }
  });
  $('#testimonials').carouFredSel({
    auto: false,
    responsive: true,
    width: '100%',		
    scroll: 1,
    prev: '#car_prev',
    next: '#car_next',
    pagination: false,
    mousewheel: true,
    items: {
    height: 'auto',
    width: '200',
    visible: {
    min: 1,
    max: 1
    }
    },
    swipe: {
      onMouse: true,
      onTouch: true
      }
  });
  $('#partners').carouFredSel({
    auto: false,
    responsive: true,
    width: '100%',		
    scroll: 1,
    prev: '#car_prev1',
    next: '#car_next1',
    pagination: false,
    mousewheel: true,
    items: {
    height: 'auto',
    width: '200',
    visible: {
    min: 1,
    max: 6
    }
    },
    swipe: {
      onMouse: true,
      onTouch: true
      }
  });
  /* toggle nav */
	$("#menu-icon").on("click", function(){
		$(".sf-menu").slideToggle();
		$(this).toggleClass("active");
	});
  
  //============================== Drop Down Lists ============================
  $('.slct').click(function(){
		var dropBlock = $(this).parent().find('.drop');
		if( dropBlock.is(':hidden') ) {
			dropBlock.slideDown();
			$(this).addClass('active');
			$('.drop').find('li').click(function(){
				var selectResult = $(this).html();
				$(this).parent().parent().find('input').val(selectResult);
				$('.slct').removeClass('active').html(selectResult);
				dropBlock.slideUp();
			});
		} else {
			$(this).removeClass('active');
			dropBlock.slideUp();
		}
		return false;
	});
  $('.slct2').click(function(){
		var dropBlock = $(this).parent().find('.drop2');
		if( dropBlock.is(':hidden') ) {
			dropBlock.slideDown();
			$(this).addClass('active');
			$('.drop2').find('li').click(function(){
				var selectResult = $(this).html();
				$(this).parent().parent().find('input').val(selectResult);
				$('.slct2').removeClass('active').html(selectResult);
				dropBlock.slideUp();
			});
		} else {
			$(this).removeClass('active');
			dropBlock.slideUp();
		}
		return false;
	});
  $('.slct3').click(function(){
		var dropBlock = $(this).parent().find('.drop3');
		if( dropBlock.is(':hidden') ) {
			dropBlock.slideDown();
			$(this).addClass('active');
			$('.drop3').find('li').click(function(){
				var selectResult = $(this).html();
				$(this).parent().parent().find('input').val(selectResult);
				$('.slct3').removeClass('active').html(selectResult);
				dropBlock.slideUp();
			});
		} else {
			$(this).removeClass('active');
			dropBlock.slideUp();
		}
		return false;
	});
  $('.slct4').click(function(){
		var dropBlock = $(this).parent().find('.drop4');
		if( dropBlock.is(':hidden') ) {
			dropBlock.slideDown();
			$(this).addClass('active');
			$('.drop4').find('li').click(function(){
				var selectResult = $(this).html();
				$(this).parent().parent().find('input').val(selectResult);
				$('.slct4').removeClass('active').html(selectResult);
				dropBlock.slideUp();
			});
		} else {
			$(this).removeClass('active');
			dropBlock.slideUp();
		}
		return false;
	});
  $('.slct5').click(function(){
		var dropBlock = $(this).parent().find('.drop5');
		if( dropBlock.is(':hidden') ) {
			dropBlock.slideDown();
			$(this).addClass('active');
			$('.drop5').find('li').click(function(){
				var selectResult = $(this).html();
				$(this).parent().parent().find('input').val(selectResult);
				$('.slct5').removeClass('active').html(selectResult);
				dropBlock.slideUp();
			});
		} else {
			$(this).removeClass('active');
			dropBlock.slideUp();
		}
		return false;
	});
  $('.slct6').click(function(){
		var dropBlock = $(this).parent().find('.drop6');
		if( dropBlock.is(':hidden') ) {
			dropBlock.slideDown();
			$(this).addClass('active');
			$('.drop6').find('li').click(function(){
				var selectResult = $(this).html();
				$(this).parent().parent().find('input').val(selectResult);
				$('.slct6').removeClass('active').html(selectResult);
				dropBlock.slideUp();
			});
		} else {
			$(this).removeClass('active');
			dropBlock.slideUp();
		}
		return false;
	});
  $('.slct7').click(function(){
		var dropBlock = $(this).parent().find('.drop7');
		if( dropBlock.is(':hidden') ) {
			dropBlock.slideDown();
			$(this).addClass('active');
			$('.drop7').find('li').click(function(){
				var selectResult = $(this).html();
				$(this).parent().parent().find('input').val(selectResult);
				$('.slct7').removeClass('active').html(selectResult);
				dropBlock.slideUp();
			});
		} else {
			$(this).removeClass('active');
			dropBlock.slideUp();
		}
		return false;
	});
  $('.slct8').click(function(){
		var dropBlock = $(this).parent().find('.drop8');
		if( dropBlock.is(':hidden') ) {
			dropBlock.slideDown();
			$(this).addClass('active');
			$('.drop8').find('li').click(function(){
				var selectResult = $(this).html();
				$(this).parent().parent().find('input').val(selectResult);
				$('.slct8').removeClass('active').html(selectResult);
				dropBlock.slideUp();
			});
		} else {
			$(this).removeClass('active');
			dropBlock.slideUp();
		}
		return false;
	});
  /* RADIO BOXES*/
  $('.radioblock').find('.radio').click(function(){
		var valueRadio = $(this).html();
		$(this).parent().find('.radio').removeClass('active');
		$(this).addClass('active');
		$(this).parent().find('input').val(valueRadio);
	});
  
  // checkboxes
  $('.checkboxes').find('.check').click(function(){
		if( $(this).find('input').is(':checked') ) {
			$(this).removeClass('active');
			$(this).find('input').removeAttr('checked');
		} else {
			$(this).addClass('active');
			$(this).find('input').attr('checked', true);
		}
	});

})

/*================================>> WIN LOAD<<========================================*/

$(window).load(function(){
  $( document ).tooltip({
    position: {
      my: "center bottom-8",
      at: "center top",
      using: function( position, feedback ) {
        $( this ).css( position );
        $( "<div>" )
          .addClass( "arrow" )
          .addClass( feedback.vertical )
          .addClass( feedback.horizontal )
          .appendTo( this );
      }
    }
  });
	$('.add_to_cart, #newsletter a, #shopping_cart .cart_icon').append('<em></em>');
 
  //============= Product gallery
  $('#carousel').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    itemWidth: 100,
    itemMargin: 0,
    asNavFor: '#slider'
  });
   
  $('#slider').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    sync: "#carousel"
  });
  
  //========== Zoom Box
  $('.zoom').zoom();
  
  //========== QTY Btn
  /******** plus mines button in qty **********/
$(".qtyBtn").click(function(){
		if($(this).hasClass("plus")){
			var qty = $("#qty").val();
			qty++;
			$("input[id=qty]").val(qty);
		}else{
			var qty = $("#qty").val();
			qty--;
			if(qty>0){
				$("input[id=qty]").val(qty);
			}
		}
	});

  //=========== TABS Responsive
  RESPONSIVEUI.responsiveTabs();

  //=========== Accordion
  
  $("#accordion1>li>a").bind('click',function() {
    var _this = $(this);
    _this.toggleClass('active', 5);
    _this.next().toggleClass('closed', 500);
    $("#accordion1>li>a").not(_this).each(function() {
      $(this).next().addClass('closed', 500);
      $(this).removeClass('active', 5);
    });
  });
  $("#accordion2>li>a").bind('click',function() {
    var _this = $(this);
    _this.toggleClass('active', 5);
    _this.next().toggleClass('closed', 500);
  });
  
  /*========================>> Slide Panel <<=======================*/
  $('.panel_button').toggle(
     function() {
       $("#panel").animate({left:0})
       $(this).addClass('active')
     },
     function() {
       $("#panel").animate({left:-192})
       $(this).removeClass('active')
     }
  );
	$('.modal-toggle-1').click(function (e) {
		e.preventDefault();
		$.modal.open($('#kitchen-sink').clone(), {
			maxHeight: 600,
			maxWidth: 400,
			fitViewport: true
		});
	});
  $('#contact-form').forms()
});

/*==============================>> Category View <<======================================*/
function view(display){
  $('#category').removeClass();
  $('#category').addClass(display)
}
$(document).ready(function () {
    $('#view a').click(function () {
        $('#view a').each(function () {
            $(this).removeClass('active');
        });
        $(this).addClass('active');
        return true;
    });
});
function slideChange(args) {
  $('.selectors .item').removeClass('selected');
  $('.selectors .item:eq(' + (args.currentSlideNumber - 1) + ')').addClass('selected');
}

/*================================>> Function for Theme Tools <<========================================*/

/*================================>> THEME BG COLORS<<========================================*/
var bgcolor1 = "#f6f6f6";
var bgcolor2 = "#ffffdd";
var bgcolor3 = "#eafcff";
var bgcolor4 = "#f6ffde";
var bgcolor5 = "#fff3f5";
var bgcolor6 = "#ffffff";

/*================================>> THEME BG IMAGES <<========================================*/

var bgimage1="pattern1";
var bgimage2="pattern2";
var bgimage3="pattern3";
var bgimage4="pattern4";



/*================================>> Functsions <<========================================*/
function set_bg_color(val)
{
  $("body").css("background-color", val);
  $.cookie("bgcolor", val);
}
function set_bg_image(val)
{
  $("body").css("background-image", 'url(catalog/view/theme/kids/image/patterns/'+val+'.png)');
  $.cookie("bgimage", val);
}

function reset()
{
  $("body").css("background-image", 'url(catalog/view/theme/kids/image/patterns/pattern4.png)');
  $("body").css("background-color", '#eafcff');
}
$(function(){
  if($.cookie("bgcolor")==null)
  {
    $("body").css("background-color", '#dff2f7');
  }
  else{
    $("body").css("background-color", $.cookie("bgcolor"));
  }
  if($.cookie("bgimage")==null)
  {
    $("body").css("background-image", 'url(catalog/view/theme/kids/image/patterns/pattern1.png)');
  }
  else{
    $("body").css("background-image", 'url(catalog/view/theme/kids/image/patterns/'+$.cookie("bgimage")+'.png)');
  }
})


