arDrone = Meteor.require 'ar-drone'
client  = arDrone.createClient({ip: '192.168.1.222'})

Meteor.methods
  'takeoff': ->
    console.log 'Start'
    client.takeoff()
  'stop': ->
    console.log 'Stop'
    client.stop()
    client.land()
  'left': ->
    console.log 'Left'
    client.left 0.1
    this.clockwise 0.5
    client.stop()
  'right': ->
    console.log 'right'
    client.right 0.1
    this.clockwise 0.5
    client.stop()
  'front': ->
    console.log 'Front'
    client.front 0.1
    this.clockwise 0.5
    client.stop()
  'back': ->
    console.log 'Back'
    client.back 0.1
    this.clockwise 0.5
    client.stop()
  'flip': ->
    client.up 1
    client.animate 'flipLeft', 500
    client.clockwise 0.5
    client.stop()