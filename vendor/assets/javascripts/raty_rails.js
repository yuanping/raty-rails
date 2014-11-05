$(function(){
  $.fn.raty.defaults.path = "/assets/raty";
  
  $('.rating-for').raty({ 
    score: function() {
      return $(this).data('score');
    }, 
		number: function() {
			return $(this).data('number');
		},
    cancel: function() {
      return $(this).data("cancel");
    },
		click: function(score, evt) {
      var url = $(this).data('url');
      var value = {};
      value[$(this).data("name")] = score;
      var data = {};
      data[$(this).data("model")] = value;
      
      $.ajax({
        type: "PUT",
        url: url,
        data: data,
        dataType: 'json'
      }).done(function( msg ) {
        // alert( "Data Saved: " + msg );
      });
		}
  });
});