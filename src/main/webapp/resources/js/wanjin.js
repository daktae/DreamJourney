window.addEventListener('scroll', function() {
  var chatcounseling = document.querySelector('.chatcounseling');
  var scrollHeight = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;

  if (scrollHeight > 1080) {
    chatcounseling.classList.add('show');
  } else {
    chatcounseling.classList.remove('show');
  }
});