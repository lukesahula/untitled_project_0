Object = require 'libraries/classic/classic'
Input = require 'libraries/boipushy/Input'
Timer = require 'libraries/chrono/Timer'
Moses = require 'libraries/moses/moses'

require 'utils/loadFiles'
require 'utils/requireFiles'
require 'utils/UUID';
require 'utils/random';

-- GameObject needs to be required before other objects that extend it
require 'objects/GameObject';

function love.load()
  -- require all object files
  local object_files = {}
  loadFiles('objects', object_files)
  requireFiles(object_files)

  -- initialize global input
  input = Input()
  input:bind('left', 'leftRoom');
  input:bind('right', 'rightRoom');

  -- initialize game rooms
  rooms = {}
  current_room = nil
end

function love.update(dt)
  if current_room then current_room:update(dt) end
  if input:pressed('leftRoom') then goToRoom('IntroRoom', 'intro') end
  if input:pressed('rightRoom') then goToRoom('SecondRoom', 'second') end
end

function love.draw()
  if current_room == nil then goToRoom('IntroRoom', 'intro') end
  if current_room then current_room:draw() end
end

function addRoom(room_type, room_name)
  local room = _G[room_type](room_name)
  rooms[room_name] = room
  return room
end

function goToRoom(room_type, room_name)
  if current_room then
    if current_room.deactivate then current_room:deactivate() end
  end
  if rooms[room_name] then
    current_room = rooms[room_name]
  else current_room = addRoom(room_type, room_name) end
  if current_room.activate then current_room:activate() end
end
