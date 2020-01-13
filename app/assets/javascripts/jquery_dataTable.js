$( document ).on('turbolinks:load', function() {
  // initiate referralTable with jquery DataTables
  var dataTableDash = $( '#referralTable' ).DataTable({
    "order": [[0,'desc']]
  });

  // This code is necessary to remove any duplicate/unncessary components of a datatable
  // If removed, using "back" on a browser after viewing a different page will cause
  // to render unncessary components on the DOM
  document.addEventListener("turbolinks:before-cache", function () {
    if (dataTableDash !== null) {
        dataTableDash.destroy();
        dataTableDash = null;
    }
  });
});
