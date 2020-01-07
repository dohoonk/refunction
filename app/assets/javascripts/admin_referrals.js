$( document ).on('turbolinks:load', function() {

  $( '.interpreter-required').on('change', 'select', function() {

    if ( ($(this).val() == 'Yes') ) {
      $('.interpreter-language').children().removeClass('d-none');
    } else {
      $('.interpreter-language').children().addClass('d-none');
    }
  })
})