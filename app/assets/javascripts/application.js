// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require moment
//= require fullcalendar
//= require bootstrap-sprockets
//= require_tree .

document.addEventListener("turbolinks:load", function() {
  // ハンバーガーメニュー
$(function() {
    $('.hamburger').click(function() {
        $(this).toggleClass('active');

        if ($(this).hasClass('active')) {
            $('.globalMenuSp').addClass('active');
        } else {
            $('.globalMenuSp').removeClass('active');
        }
    });
    // ハンバーガーメニュー領域外クリック
    $(document).on('click', function(e) {
      if ($('.hamburger').hasClass('active')) {
        if (!$(e.target).closest('.hamburger').length) {
          $('.hamburger').removeClass('active');
          $('.globalMenuSp').removeClass('active');
        }
      }
    })

// コメントエラー文非同期
    $('#btn-text-error').on('click',function(){
      $('#error_explanation').remove()
    })

// トップに戻るボタン
    $('#back a').on('click',function(event){
      $('body, html').animate({
        scrollTop:0
      }, 800);
      event.preventDefault();
    });
});
})
