#= require game_faces
window.game = ->
  states = {
    inited: 'inited'
    choose_face: 'choose_face'
    player1: 'player1'
    player2: 'player2'
    finished: 'finished'
  }

  state = undefined

  p1_cards_obj = {}
  p2_cards_obj = {}

  p1_card_selector = []
  p2_card_selector = []

  p1_questions = {}
  p2_questions = {}

  p1_face_index = undefined
  p2_face_index = undefined

  max_click_try = 3

  p1_click_try = 0
  p2_click_try = 0

  question_panel = undefined

  initiate = (jquestion_panel, p1_type, p1_cards, p2_cards) ->  # p1_type - comp or player // p2_cards jquery selectors
    unless (state)
      $('body').on 'click', '.ask_question', choose_question

      question_panel = jquestion_panel
      question_panel.html('Please choose a face on human board...')

      if (p1_type == 'comp')
        comp_cards = {}

        while(Object.keys(comp_cards).length < 24)
          comp_cards[Math.floor(Math.random() * 82)] = true

        for key in Object.keys(comp_cards)
          p1_cards_obj[key] = game_faces().faces[Number(key)]

        p1_face_index = p1_cards_obj[Math.floor(Math.random() * 24)]
      else
        # send request to channel

      p1_card_selector = p1_cards
      p2_card_selector = p2_cards

      $.each(
        $(p2_card_selector),
        ->
          key = $(@).attr('card_id')
          p2_cards_obj[key] = game_faces().faces[Number(key)]
      )

      state = states['inited']
      $('body').on 'click', p2_card_selector, choose_target
    else
      alert('Fuck off')


  choose_turn = ->
    if (state == states['inited'])
      if Math.floor(Math.random() * 82) % 2 == 1
        state = states['player1']
      else
        state = states['player2']


      $('body').on 'click', p1_card_selector, choose_face_p2
#      $('body').on 'click', p2_card_selector, choose_face_p1

      change_turn()

    else alert('Fuck off')

  comp_question = ->
    sort_measures = []
    measures = {}
    for k,v of p2_cards_obj
      for n,val of v
        key = "#{n}|#{val}"
        measures[key] = (Number(measures[key])||0) + 1
    for key, val of measures
      sort_measures.push {name: key, val: val}
    sort_measures.sort (obj1, obj2) ->
      obj1.val - obj2.val
    avg_val = sort_measures[Math.round(sort_measures.length / 2)].name
    question = avg_val.split('|')

  proc_question_panel = ->
    data = if state == states['player1'] # comp turn
      # TODO if opened pictures <=3 then close cards rnd(3) else comp_question()
      """
        <p>Comp turn</p>

        #{comp_question()}

      """
    else
      """
        <p>Your turn</p>
        <p>Please ask a question or choose face on apponent board (you have #{max_click_try - p2_click_try} attempts)</p>
        <p>
          A person
          <select class="relation"><option value="+">have</option><option value="-">dont have</option></select>
          a <select class='property'>#{properties()}</select>
          <a href="#" class="ask_question">Ask</a>
        </p>
      """

    question_panel.html(data)


  hair_options = ->
    res = ''
    for k,v of game_faces().face_values['hair_color']
      res += "<option value=\"hair_color|#{k}\">#{v} colored hair</option>"
    res

  properties = ->
    """
      <option value="sex|male">male gender</option>
      <option value="sex|female">female gender</option>
      <option value="glasses">glasses</option>
      <option value="teeth">visible teeth</option>
      <option value="beard_or_mustaches">visible beard or mustaches</option>
      <option value="hair">hair</option>
      #{hair_options()}
    """

  choose_target = ->
    p2_face_index = $(@).attr('card_id')
    $('body').off 'click', p2_card_selector
    choose_turn()


  choose_face_p1 = ->
    if state != states['player1'] then return

    p1_click_try++
    face_index = $(@).attr('card_id')

    if (face_index == p2_face_index)
      finished('player1')
    else
      if p1_click_try == max_click_try
        finished('player2')
      else
        change_turn()

    false


  choose_face_p2 = ->
    if state != states['player2'] then return

    p2_click_try++

    face_index = $(@).attr('card_id')

    if (face_index == p1_face_index)
      finished('player2')
    else
      if p2_click_try == max_click_try
        finished('player1')
      else
        change_turn()

    false



  choose_question = ->
    rel_val = question_panel.find('.relation').val()
    property_val = question_panel.find('.property').val()

    questions_list = state = states['player1'] ? p1_questions : p2_questions

    if (questions_list[rel_val + property_val])
      finished(if state == states['player1'] then 'player2' else 'player1')
    else
      questions_list[rel_val + property_val] = true
      alert(rel_val + property_val)

    false


  change_turn = ->
    if (state == states['player1'])
      state = states['player2']
    else if (state == states['player2'])
      state = states['player1']
    else
      alert('Some shit happened')

    proc_question_panel()

  finished = (player_name) ->
    state = states['finished']
    alert(player_name + ' win!!')
      
  return {
    initiate: initiate
    get_state: -> return state;
  }    
