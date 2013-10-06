(function() {
  // jquery ujs hack for remote ajax button
  $(document).on("mouseup", "button[data-remote]", function(e) {
    // middle button click
    if(e.which == 2) {
      $(e.currentTarget).trigger("click.rails")
    }
  });

  // jquery ujs hack for form restful button
  $(document).on("click.rails", "button[data-method]", function(e) {
    button = $(e.currentTarget)


    if (button.data('method') && button.data('remote') === undefined) {
      if (!$.rails.allowAction(button)) return $.rails.stopEverything(e);
      
      handleMethod(button)
    }

  });


  handleMethod = function(button) {

    var url = button.data("url"),
      method = button.data('method'),
      target = button.data('target'),
      csrf_token = $('meta[name=csrf-token]').attr('content'),
      csrf_param = $('meta[name=csrf-param]').attr('content'),
      form = $('<form method="post" action="' + url + '"></form>'),
      metadata_input = '<input name="_method" value="' + method + '" type="hidden" />';

    if (csrf_param !== undefined && csrf_token !== undefined) {
      metadata_input += '<input name="' + csrf_param + '" value="' + csrf_token + '" type="hidden" />';
    }

    if (target) { form.attr('target', target); }

    form.hide().append(metadata_input).appendTo('body');
    form.submit();
  }



})();