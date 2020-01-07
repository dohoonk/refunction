$( document ).on('turbolinks:load', function() {


  //Shows the input field for Referral Forms when Select is used on the Interpreter Required?
  $( '.interpreter-required').on('change', 'select', function() {
    if ( ($(this).val() == 'Yes') ) {
      $('.interpreter-language').children().removeClass('d-none');
    } else {
      $('.interpreter-language').children().addClass('d-none');
    }
  });


  //on the form's show page, shows the interepreter's language if the select is Yes
  if( $('#showReferral').length != 0) {
    let languageNeeded = $( '#showReferral' ).find('.interpreter-required-result div');
    if($(languageNeeded).html().includes('Yes')) {
      $( '#showReferral').find('.interpreter-required-language div').removeClass('d-none');
    }
  }

});