window.addEventListener('scroll', function() {
  var chatcounseling = document.querySelector('.chatcounseling');
  var scrollHeight = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
  var windowHeight = window.innerHeight;
  var targetHeight = windowHeight * 0.2;

  if (scrollHeight > targetHeight) {
    chatcounseling.classList.add('show');
  } else {
    chatcounseling.classList.remove('show');
  }
});