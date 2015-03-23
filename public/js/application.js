$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $('.row h2').on('click', function(e) {
    e.preventDefault();
    var $this = $(this);
    var $collapse = $this.closest('.collapse-group').find('.collapse');
    $collapse.collapse('toggle');
  });

  var button = "<input type='submit' value='Create' id='submit' class='btn btn-primary">";
  var glyph = '&nbsp;&nbsp;<span class="glyphicon glyphicon-remove-circle remove" aria-hidden="true"></span>';

  var q = 0;
  var c = 0;

  $(document).on("click", ".remove", function(e) {
    $(this).closest("div").remove();
  });

  $(document).on("keydown",".tab_text",function(e) {
    var code = e.keyCode || e.which;

    // adds new question
    if (code == 13 && $(this).hasClass("active-text")) {
      e.preventDefault();
      q++;
      $("#submit").remove();
      $('<div><p>Question:</p><input type=text class="tab_text active-text" name="questions[' + q + ']">' + glyph + '</br></br></div>').appendTo($("#create_survey"));
      $(this).removeClass("active-text");
      $(this).closest("div").next().find("input").focus();
      $(button).appendTo($("#create_survey"));
      c = 0;
    }

    // adds new choice
    if (code == 9 && $(this).hasClass("active-text")) {
      $("#submit").remove();
      $('<div><p class=answer>Answer:</p><input type=text class="tab_text answer active-text" name="choices[' + q + '][' + c + ']">' + glyph + '</br></br></div>' + button).appendTo($("#create_survey"));
      $(this).removeClass("active-text");
      c++;
    }

  });
});
