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

  p1_question = undefined

  p1_cards_obj = {}
  p2_cards_obj = {}

  p1_cards_jquery = []
  p2_cards_jquery = []

  p1_card_selector = undefined
  p2_card_selector = undefined

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
      p1_card_selector = p1_cards
      p2_card_selector = p2_cards

      $('body').on 'click', '.ask_question', ask_question

      $('body').on 'click', '.answer_yes', player2_positive_answer
      $('body').on 'click', '.answer_no', player2_negative_answer

      question_panel = jquestion_panel
      question_panel.html('Please choose a face on human board...')

      if (p1_type == 'comp')
        comp_cards = {}

        $.each(
          $(p1_card_selector),
          ->
            p1_cards_jquery.push($(@))
            key = $(@).attr('card_id')
            p1_cards_obj[key] = game_faces().faces[Number(key)]
        )

#        while(Object.keys(comp_cards).length < 24)
#          comp_cards[Math.floor(Math.random() * 82)] = true

        for key in Object.keys(comp_cards)
          p1_cards_obj[key] = game_faces().faces[Number(key)]

        p1_face_index = p1_cards_obj[Math.floor(Math.random() * 24)]
      else
        # send request to channel

      $.each(
        $(p2_card_selector),
        ->
          p2_cards_jquery.push($(@))
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
    p1_question = sort_measures[Math.round(sort_measures.length / 2)].name

  proc_question_panel = ->
    data = if state == states['player1'] # comp turn
      # TODO if opened pictures <=3 then close cards rnd(3) else comp_question()
      """
        <p>Comp turn</p>

        <p>
          A person has a #{comp_question().split('|').reverse()} ?
        </p>

        <p>
          <a href="#" class="answer_yes">Yes</a>
          <a href="#" class="answer_no">No</a>
        </p>
      """
    else
      """
        <p>Your turn</p>
        <p>Please ask a question or choose face on apponent board (you have #{max_click_try - p2_click_try} attempts)</p>
        <p>
          A person
          <select class="relation"><option value="+">have</option><option value="-">dont have</option></select>
          a <select class='property'>#{properties()}</select> ?
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
      <option value="glasses|has glasses">glasses</option>
      <option value="teeth|visible teeth">visible teeth</option>
      <option value="beard_or_mustaches|visible beard or mustaches">visible beard or mustaches</option>
      <option value="hair|haired">hair</option>
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


  player2_positive_answer = ->
    console.log('Positive user answer')
    proceed_question('+' + p1_question)
    false

  player2_negative_answer = ->
    console.log('Negative user answer')
    proceed_question('-' + p1_question)
    false


  ask_question = ->
    rel_val = question_panel.find('.relation').val()
    property_val = question_panel.find('.property').val()

    questions_list = state = states['player1'] ? p1_questions : p2_questions

    if (questions_list[rel_val + property_val])
      finished(if state == states['player1'] then 'player2' else 'player1')
    else
      questions_list[rel_val + property_val] = true
      proceed_question(rel_val + property_val)

    false


  proceed_question = (question)->
    is_first_player = state == states['player1']

    obj_list = if is_first_player then p2_cards_obj else p1_cards_obj
    selector_list = if is_first_player then p2_cards_jquery else p1_cards_jquery

    negative = question[0] == '-'

    [hkey, hvalue] = question.substring(1).split('|')

    index = 0
    for key, value of obj_list
      predictable = value[hkey] != hvalue
      if (negative) then  predictable = !predictable

      if (predictable)
        selector_list[index].addClass('back')
        selector_list.splice(index, 1)
        delete obj_list[key]
      else
        index++

    if selector_list.length == 0
      finished(if is_first_player then 'player1' else 'player2')
    else
      change_turn()


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
