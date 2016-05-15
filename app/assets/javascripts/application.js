// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$( document ).ready(function() {
	console.log("Sanity check");
 });

	var player;
    function onYouTubePlayerAPIReady() {
        player = new YT.Player('player', {
          height: '400',
          width: '600',
          videoId: '05-o80xRHQQ',
          events: {
            'onReady': onPlayerReady,
            'onStateChange': onPlayerStateChange
          }
        });
    }

  // autoplay video
    function onPlayerReady(event) {
        event.target.playVideo();
    }


	function onPlayerStateChange(event) {        
        if(event.data === 0) {            
            alert('done');
        }
    }
    
//