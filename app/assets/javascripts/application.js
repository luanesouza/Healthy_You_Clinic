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
// view

// Gemfile
// # Nothing - jquery & jqueryUI are now the default.
// # Check web pages to see what really gets included (in the header).

// application.js
// %script
  // # The main code
  $(function() {
  $( "#datepicker" ).datepicker();
  });
  // # This makes the pop-up show the actual db date by fixing a format difference.
  $(function (){
  var dateInput = $("#datepicker");
  var format = 'yy-mm-dd';
  dateInput.datepicker({dateFormat: format});
  dateInput.datepicker('setDate', $.datepicker.parseDate(format, dateInput.val()));
  });
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
