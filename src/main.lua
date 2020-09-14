Object = require 'libraries/classic/classic'
Input = require 'libraries/boipushy/Input'
Timer = require 'libraries/chrono/Timer'

require 'utils/loadFiles'
require 'utils/requireFiles'

function love.load()
  image = love.graphics.newImage('resources/image.jpg')

  local object_files = {}
  loadFiles('objects', object_files)
  requireFiles(object_files)

  input = Input()
end

function love.update(dt)

end

function love.draw()
  love.graphics.draw(image, love.math.random(0, 800), love.math.random(0, 600))
end
