window.game_faces = ->
  face_values = {
    male: 'male'
    female: 'female'
    glasses: ' '
    hair: ' '
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
      beard_or_mustaches: null,
      name: 'Margarita'
    },
    1: {sex: face_values['male'], glasses: null, hair: null, teeth: face_values['teeth'], beard_or_mustaches: null, name: 'Peter'},
    2: {sex: face_values['male'], glasses: null, hair: null, teeth: face_values['teeth'], beard_or_mustaches: null, name: 'John'},
    3: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: face_values['beard_or_mustaches'],
      name: 'Alexander'
    },
    4: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Arnold'
    },
    5: {sex: face_values['male'], glasses: null, hair: null, teeth: face_values['teeth'], beard_or_mustaches: null, name: 'Boris'},
    6: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['pink'],
      teeth: null,
      beard_or_mustaches: face_values['beard_or_mustaches'],
      name: 'Jakob'
    },
    7: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['yellow'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Bruce'
    },
    8: {
      sex: face_values['female'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['orange'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Janet'
    },
    9: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: face_values['teeth'],
      beard_or_mustaches: null,
      name: 'Bogdan'
    },
    10: {
      sex: face_values['female'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['green'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Ivanna'
    },
    11: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['yellow'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Serg'
    },
    12: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'Den'},
    13: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Nick'
    },
    14: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'Silvester'},
    15: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'Brian'},
    16: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Samantha'
    },
    17: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Andrew'
    },
    18: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Walther'
    },
    19: {
      sex: face_values['male'],
      glasses: null,
      hair: null,
      teeth: null,
      beard_or_mustaches: null,
      name: 'Paul'
    },
    20: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['yellow'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Daniel'
    },
    21: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: face_values['beard_or_mustaches'],
      name: 'Mike'
    },
    22: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Max'
    },
    23: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: face_values['teeth'],
      beard_or_mustaches: null,
      name: 'Tony'
    },
    24: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Ryan'
    },
    25: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Agata'
    },
    26: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['blue'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'David'
    },
    27: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Dave'
    },
    28: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: face_values['beard_or_mustaches'],
      name: 'Scott'
    },
    29: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Connor'
    },
    30: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Vanda'
    },
    31: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Valentin'
    },
    32: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Marina'
    },
    33: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'William'},
    34: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'Sergio'},
    35: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'Nikola'},
    36: {
      sex: face_values['female'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Helen'
    },
    37: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['pink'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Iren'
    },
    38: {
      sex: face_values['female'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Natali'
    },
    39: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Clay'
    },
    40: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['green'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Stephen'
    },
    41: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['yellow'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Amanda'
    },
    42: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Clarissa'
    },
    43: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Jack'
    },
    44: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'Timothy'},
    45: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Patricia'
    },
    46: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'Robert'},
    47: {sex: face_values['male'], glasses: null, hair: null, teeth: face_values['teeth'], beard_or_mustaches: null, name: 'Gedeon'},
    48: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: face_values['beard_or_mustaches'],
      name: 'Floyd'
    },
    49: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'George'
    },
    50: {sex: face_values['male'], glasses: null, hair: null, teeth: face_values['teeth'], beard_or_mustaches: null, name: 'Tom'},
    51: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Adam'
    },
    52: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Alan'
    },
    53: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'Zak'},
    54: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'Vincent'},
    55: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Bob'
    },
    56: {sex: face_values['male'], glasses: null, hair: null, teeth: face_values['teeth'], beard_or_mustaches: null, name: 'Jimmy'},
    57: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: face_values['teeth'],
      beard_or_mustaches: null,
      name: 'Richard'
    },
    58: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Gerhard'
    },
    59: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Bernard'
    },
    60: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Ken'
    },
    61: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'Ben'},
    62: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Darina'
    },
    63: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['yellow'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Rachel'
    },
    64: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Adrian'
    },
    65: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Sarah'
    },
    66: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Ben'
    },
    67: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Viktor'
    },
    68: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['pink'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Mary'
    },
    69: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'Bernard'},
    70: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Adelina'
    },
    71: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['brown'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Henry'
    },
    72: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Bill'
    },
    73: {
      sex: face_values['male'],
      glasses: face_values['glasses'],
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Constantin'
    },
    74: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Laura'
    },
    75: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Patrick'
    },
    76: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Erik'
    },
    77: {sex: face_values['male'], glasses: null, hair: null, teeth: null, beard_or_mustaches: null, name: 'Elton'},
    78: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: face_values['teeth'],
      beard_or_mustaches: null,
      name: 'Hose'
    },
    79: {
      sex: face_values['female'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['blonde'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Kristina'
    },
    80: {
      sex: face_values['male'],
      glasses: null,
      hair: face_values['hair'],
      hair_color: face_values['hair_color']['black'],
      teeth: null,
      beard_or_mustaches: null,
      name: 'Timothy'
    },
  }

  return {
    face_values: face_values
    faces: faces
  }
