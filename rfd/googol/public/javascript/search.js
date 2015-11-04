$('#search').keyup(function(e) {
  var q = $('#search').val();
  if (q == "")
  {
      $("#results").empty();
  }
  else
  {
    $.getJSON("/s/q/" + q,
    function(data) {
      $("#results").empty();
      if (data.people.length == 0)
      {
        $("#results").append("<div>Nothing found</div>");
      }
      else
      {
        $.each(data.people, function(i,item){
          $("#results").append("<div>" + item + "</div>");
        });
      }
    });
  }
});
