window.game = (p1_type, p1_cards, p2_cards) -> # p1_type - comp or player // p2_cards jquery selectors
  states = {
    init_required: 'init_required'
    inited: 'inited'
    playe1: 'player1_turn'
    player2: 'player2_turn'
    finished: 'finished'
  }

  state: states['init_required']
  _properties: {
    nose: ['small, big']
    hair: ['brown', 'nothing']
    face: ['smart', 'triangle']

  }

  p1_cards_obj: []
  p2_cards_obj: []

  p1_card_selectors: []
  p2_card_selectors: []

  initiate = ->
    if (state == states['init_required'])
      if (p1_type == 'comp')

      else
        # send request to channel

      @p1_card_selectors = p1_cards
      @p2_card_selectors = p2_cards

      $.each(
        p2_cards,
        ->
      )
      
      @state = states['inited']
    else 
      alert('Fuck off')


  properties = -> Object.keys(@_properties)


  property_variants = (property) -> @_properties[property]


  choose_property_variant = (variant) ->


  change_turn = ->
    if (@state == states['player1'])
      # show questions panel
      @state = states['player2']
    else if (@state == states['player2'])
      # hide questions panel
      @state = states['player1']
    else
      alert('Some shit happened')

  finished = ->
    @state = states['finished']

      
  return {
    initiate: initiate
    properties: properties
    property_variants: property_variants
    choose_property_variant: choose_property_variant
    get_state: -> return @state;
  }    