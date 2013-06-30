$(document).ready(function(){
  console.log("loaded");
  $('#answer_form').hide();
  $('#answer_the_question').click(function(){
    $('#answer_form').fadeIn('slow');
  });  
});
