//  Write your Analytics events here with
$(document).ready(function(){

  // Tracks page views/loads
  blocmetrics.report('Page Views');

  // Tracks links clicked
  $('a').click(function(){
    blocmetrics.report('Links Clicked');
  });

  // Tracks apps registered
  $('.new-app-btn').click(function(){
    blocmetrics.report('Apps registered on Blocmetrics');
  });

  // Tracks apps removed
  $('.remove-app-btn').click(function(){
    blocmetrics.report('Apps removed from Blocmetrics');
  });
});
