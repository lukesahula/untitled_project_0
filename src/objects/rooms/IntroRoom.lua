IntroRoom = Object:extend()

function IntroRoom:new()
  -- TODO: Figure out if these should be local
  image = love.graphics.newImage('resources/image.jpg')  
  active = false
end

function IntroRoom:update(dt)

end

function IntroRoom:draw()
  if active == true then
    love.graphics.draw(image, love.math.random(0, 800), love.math.random(0, 600))
  end
end

function IntroRoom:activate()
  active = true
end

function IntroRoom:deactivate()
  active = false
end
