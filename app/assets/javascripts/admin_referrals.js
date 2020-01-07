$( document ).on('turbolinks:load', function() {

  $( '.interpreter-required').on('change', 'select', function() {
    if ( ($(this).val() == 'Yes') ) {
      $('.interpreter-language').children().removeClass('d-none');
    } else {
      $('.interpreter-language').children().addClass('d-none');
    }
  });


  if( $('#showReferral').length != 0) {
    let languageNeeded = $( '#showReferral' ).find('.interpreter-required-result div');
    if($(languageNeeded).html().includes('Yes')) {
      $( '#showReferral').find('.interpreter-required-language div').removeClass('d-none');
    }

  }

})