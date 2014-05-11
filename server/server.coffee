arDrone = Meteor.require 'ar-drone'
client  = arDrone.createClient({ip: '192.168.1.222'})

Meteor.methods
  'takeoff': ->
    client.takeoff()
  'debug': ->
    console.log Math.floor(Math.random()*10000)
  'land': ->
    client.stop()
    client.land()
  'stop': ->
    client.stop()
  'left': ->
    client.left 0.1
  'right': ->
    client.right 0.1
  'front': ->
    client.front 0.1
  'back': ->
    client.back 0.1
  'up': ->
    client.up 0.1
  'down': ->
    client.down 0.1
  'flip': ->
    client.up 1
    client.animate 'flipLeft', 500
    client.stop()
  'foo': ->
    client.up 1
    client.animate 'phiM30Deg', 1000
    client.stop()
