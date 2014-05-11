Template.gamepad.events
  'mousedown .stop,touchstart .land': ->
    Meteor.call 'land'
  'mousedown .start,touchstart .start': ->
    Meteor.call 'takeoff'
  'mousedown .left,touchstart .left': ->
    Meteor.call 'left'
  'mousedown .right,touchstart .right': ->
    Meteor.call 'right'
  'mousedown .front,touchstart .front': ->
    Meteor.call 'front'
  'mousedown .back,touchstart .back': ->
    Meteor.call 'back'
  'mousedown .up,touchstart .up': ->
    Meteor.call 'up'
  'mousedown .down,touchstart .down': ->
    Meteor.call 'down'
  'mousedown .flip,touchstart .flip': ->
    Meteor.call 'flip'
  'mousedown .foo,touchstart .foo': ->
    Meteor.call 'foo'
  'touchend, mouseup': ->
    setTimeout ->
      Meteor.call 'stop'
    , 400
