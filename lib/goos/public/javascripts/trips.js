$(function(){
  $("#place_bid").click(function() {
    var amount = $("#bid").val()
    var trip = $("#trip_id").val()
    
    bid = {trip_id: trip, bid: amount}

    $.post("/", bid, function(data) {
      result = JSON.parse(data)
      
      setTimeout(function() {
        $("#trip_bid_" + result.trip_id).text(result.amount_for_trip)
      }, 1000 * Math.random());
    });
    
    return false;
  });
});