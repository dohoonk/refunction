$( document ).on('turbolinks:load', function() {
  var dataTableDash = $( '#referralTable' ).DataTable({
    "order": [[0,'desc']],
  });
  document.addEventListener("turbolinks:before-cache", function () {
    if (dataTableDash !== null) {
        dataTableDash.destroy();
        dataTableDash = null;
    }
  });
});
