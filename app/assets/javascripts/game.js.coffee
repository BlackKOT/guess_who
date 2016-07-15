window.game = ->
  states = {
    inited: 'inited',
    player1: 'player1_turn'
    player2: 'player2_turn'
    finished: 'finished'
  }

  state = undefined
#  _properties =
#    nose: ['small, big']
#    hair: ['brown', 'nothing']
#    face: ['smart', 'triangle']

  face_values = {
    male: 'male'
    female: 'female'
    glasses: 'has glasses'
    hair: 'haired'
    hair_color: {
      black: 'black',
      blonde: 'blonde',
      brown: 'brown',
      pink: 'pink',
      yellow: 'yellow',
      blue: 'blue',
      green: 'green',
      orange: 'orange'
    }
    teeth: 'visible teeth'
    beard_or_mustaches: 'visible beard or mustaches'
  }

  faces = {
    0: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    1: {sex: face_values['male'], glasses: null, hair: null, teeth: face_values['teeth'], beard_or_mustaches: null},
    2: {sex: face_values['male'], glasses: null, hair: null, teeth: face_values['teeth'], beard_or_mustaches: null},
    3: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: face_values['beard_or_mustaches']
    },
    4: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    5: {sex: face_values['male'], glasses: null, hair: null, teeth: face_values['teeth'], beard_or_mustaches: null},
    6: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['pink'],
      teeth: null,
      beard_or_mustaches: face_values['beard_or_mustaches']
    },
    7: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['yellow'],
      teeth: null,
      beard_or_mustaches: null
    },
    8: {
      sex: face_values['female'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['orange'],
      teeth: null,
      beard_or_mustaches: null
    },
    9: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: face_values['teeth'],
      beard_or_mustaches: null
    },
    10: {
      sex: face_values['female'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['green'],
      teeth: null,
      beard_or_mustaches: null
    },
    11: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['yellow'],
      teeth: null,
      beard_or_mustaches: null
    },
    12: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    13: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    14: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    15: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    16: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    17: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    18: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    19: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['yellow'],
      teeth: null,
      beard_or_mustaches: null
    },
    20: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    21: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: face_values['beard_or_mustaches']
    },
    22: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    23: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth:
        teeth: face_values['teeth'], beard_or_mustaches: null
    },
    24: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    25: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    26: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['blue'],
      teeth: null,
      beard_or_mustaches: null
    },
    27: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    28: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: face_values['beard_or_mustaches']
    },
    29: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    30: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    31: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    32: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    33: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    34: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    35: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    36: {
      sex: face_values['female'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    37: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['pink'],
      teeth: null,
      beard_or_mustaches: null
    },
    38: {
      sex: face_values['female'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    39: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    40: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['green'],
      teeth: null,
      beard_or_mustaches: null
    },
    41: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['yellow'],
      teeth: null,
      beard_or_mustaches: null
    },
    42: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    43: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    44: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    45: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    46: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    47: {sex: face_values['male'], glasses: null, hair: null, teeth: face_values['teeth'], beard_or_mustaches: null},
    48: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: face_values['beard_or_mustaches']
    },
    49: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    50: {sex: face_values['male'], glasses: null, hair: null, teeth: face_values['teeth'], beard_or_mustaches: null},
    51: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    52: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    53: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    54: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    55: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    56: {sex: face_values['male'], glasses: null, hair: null, teeth: face_values['teeth'], beard_or_mustaches: null},
    57: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: face_values['teeth'],
      beard_or_mustaches: null
    },
    58: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    59: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    60: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    61: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    62: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    63: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['yellow'],
      teeth: null,
      beard_or_mustaches: null
    },
    64: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    65: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    66: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    67: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    68: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['pink'],
      teeth: null,
      beard_or_mustaches: null
    },
    69: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    70: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    71: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null
    },
    72: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    73: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    74: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    75: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    76: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    77: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null},
    78: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
    79: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['blonde'],
      teeth: null,
      beard_or_mustaches: null
    },
    80: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null
    },
  }
  p1_cards_obj = []
  p2_cards_obj = []

  p1_card_selectors = []
  p2_card_selectors = []

  question_panel = undefined

  initiate = (jquestion_panel, p1_type, p1_cards, p2_cards) ->  # p1_type - comp or player // p2_cards jquery selectors
    unless (state)
      question_panel = jquestion_panel

      if (p1_type == 'comp')
        comp_cards = {}

        while(Object.keys(comp_cards).length < 24)
          comp_cards[Math.floor(Math.random() * 82)] = true

        p1_cards_obj = Object.keys(comp_cards)
      else
        # send request to channel

      p1_card_selectors = p1_cards
      p2_card_selectors = p2_cards

      cards = []
      $.each(
        p2_cards,
        ->
          cards.push($(@).attr('card_id'))
      )

      p2_cards_obj = cards
      
      state = states['inited']

      choose_turn()
    else 
      alert('Fuck off')


  choose_turn = ->
    if (state == states['inited'])
      if Math.floor(Math.random() * 82) % 2 == 1
        state = states['player1']
      else
        state = states['player2']

      change_turn()

    else alert('Fuck off')


  proc_question_panel = ->
    data = if state == states['player1'] # comp turn
      """
        <p>Comp turn</p>


      """
    else
      """
        <p>Your turn</p>
        <p>Please ask a question</p>
        <p>
          A person have a <select class='property'>#{properties()}</select>
        </p>
      """


    question_panel.html(data)


  hair_options = ->
    res = ''
    for k,v of face_values['hair_color']
      res += "<option value=\"hair_color|#{k}\">#{v} colored hair</option>"
    res

  properties = ->
    #    Object.keys(_properties)

    """
      <option value="">Select your question</option>
      <option value="sex|male">male gender</option>
      <option value="sex|female">female gender</option>
      <option value="glasses">glasses</option>
      <option value="teeth">visible teeth</option>
      <option value="beard_or_mustaches">visible beard or mustaches</option>
      #{hair_options()}
    """

#
#  property_variants = (property) -> _properties[property]


  choose_property_variant = (variant) ->


  change_turn = ->
    if (state == states['player1'])
      state = states['player2']
    else if (state == states['player2'])
      state = states['player1']
    else
      alert('Some shit happened')

    proc_question_panel()

  finished = ->
    state = states['finished']

      
  return {
    initiate: initiate
#    properties: properties
#    property_variants: property_variants
#    choose_property_variant: choose_property_variant
    get_state: -> return state;
  }    
