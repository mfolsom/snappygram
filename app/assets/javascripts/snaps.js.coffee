# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
pusher = new Pusher('ebf8022e11d93168b75f')
channel = pusher.subscribe('snappygram')
channel.bind('upload', (data)->
  $('ul').prepend("""
  <li>
  #{data.description}<br>
  <a href='/snaps/#{data.id}' id='snap-detail'>
  <img src="#{data.snap}" /></a> 
  </li>
  """)
)

#in javascript
#function(data){}
#in coffeescript
#(data)->
