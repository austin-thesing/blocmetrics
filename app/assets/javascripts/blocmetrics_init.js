var blocmetrics = {};
blocmetrics.report = function(eventName) {
  var event = {event: { event_name: eventName }};
  var request = new XMLHttpRequest();
  // For local testing
  // request.open('POST', 'http://localhost:3000/api/events', true);
  request.open('POST', 'http://blocmetrics.bloc-austin.xyz/api/events', true);
  request.setRequestHeader('Content-Type', 'application/json');
  request.send(JSON.stringify(event));
};
