Template.gamepad.events
  'click .stop': ->
    Meteor.call 'stop'
  'click .start': ->
    Meteor.call 'takeoff'
  'click .left': ->
    Meteor.call 'left'
  'click .right': ->
    Meteor.call 'right'
  'click .front': ->
    Meteor.call 'front'
  'click .back': ->
    Meteor.call 'back'
