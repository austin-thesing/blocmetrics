# Blocmetrics README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Client-side Tracking
```javascript
var blocmetrics = {};
blocmetrics.report = function(eventName) {
  var event = {event: { event_name: eventName }};
  var request = new XMLHttpRequest();
  // Local Tracking
  // request.open('POST', 'http://localhost:3000/api/events', true);
  // Production Tracking
  request.open('POST', 'http://blocmetrics.bloc-austin.xyz/api/events', true);
  request.setRequestHeader('Content-Type', 'application/json');
  request.send(JSON.stringify(event));
};
```
Place this in your application.html.erb in your layouts folder.
```javascript
<script type="text/javascript">
    $(document).ready(function(){
      blocmetrics.report('pageLoad');
    });
  </script>
```


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
