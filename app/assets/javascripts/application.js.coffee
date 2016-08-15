#= require jquery
#= require jquery_ujs
#= require react
#= require react_ujs
#= require components
#= require_tree .

$ ->
  $('body').on 'click', '.new_game', ->
    window.current_game = window.game();
    window.current_game.initiate($('.options'), 'comp', '.board:first .card', '.board:last .card');



