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
$(function() {
    $('.hamburger').click(function() {
        $(this).toggleClass('active');

        if ($(this).hasClass('active')) {
            $('.globalMenuSp').addClass('active');
        } else {
            $('.globalMenuSp').removeClass('active');
        }
    });
});
})

//  $(document).ready(function() {
//           var prepare = function(options, originalOptions, jqXHR) {
//             var token;
//             if (!options.crossDomain) {
//               token = $('meta[name="csrf-token"]').attr('content');
//               if (token) {
//                 return jqXHR.setRequestHeader('X-CSRF-Token', token);
//               }
//             }
//           };
//           }
//           )
//           // カレンダー表示
//           $('#calendar').fullCalendar ({
//               header: {
//                   left: 'prev,next today',
//                   center: 'month,agendaWeek,agendaDay',
//                   right: 'title'
//               },
//               buttonText: {
//                     prev: "<",
//                     next: ">"
//               },
//               timezone: 'UTC',
//               // events: '/users/events.json',
//             //   events: '/users/show.json',
//               navLinks: true,
//               selectable: true,
//               selectHelper: true,
//               // 日付クリック
//               dayClick : function ( date , jsEvent , view ) {
//                   $('#inputScheduleForm').modal('show');
//                   },

//               // event クリックで編集、削除
//               eventClick : function(event, jsEvent , view) {
//                   jsEvent.preventDefault();
//                   $(`#inputScheduleEditForm${event.id}`).modal('show');
//               },

//               eventMouseover : function(event, jsEvent , view) {
//                   jsEvent.preventDefault();
//               }
//           })