jQuery('document').ready(function($){
	// fading testimonials
	jQuery('.testimonials').innerfade({
      animationtype: 'fade', 
      speed: 'normal', 
      timeout: 4000,
      type: 'sequence',
      containerheight: '3.5em'
    });
    
    // homepage youtube
    $("#youtube-stub").click(function() {
      $(this).remove();
      youtube_play(homepage_youtube);
    }).hover(function() {
      $(this).attr('src', '/images/youtube-preview-hover.jpg');
    }, function() {
      $(this).attr('src', '/images/youtube-preview.jpg');
    })
    
    // channel popup
    $('#ims-channel-popup,.ims-channel-popup').click(function() {
      open_in_popup($(this).attr('href'), 1000, 650, 'IMS Channel');
      return false;
    })
    
});

 function onYouTubePlayerReady(ytplayer) {
  homepage_youtube = document.getElementById("homepage-youtube");
 }

function youtube_play(player) {
  if(player) {
    player.playVideo();
  }
}

function open_in_popup(url, width, height, name) {
  newwindow = window.open(url, name, 'height='+height+', width='+width);
  if (window.focus) {
    newwindow.focus();
  }
  return false;
}
