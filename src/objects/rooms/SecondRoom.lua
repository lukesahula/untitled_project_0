SecondRoom = Object:extend()

function SecondRoom:new()
  active = false
  self.area = Area()
end

function SecondRoom:update(dt)
  self.area:update(dt)
end

function SecondRoom:draw()
  if active == true then
    self.area:draw()
  end
end

function SecondRoom:activate()
  active = true
  self.area:addGameObject('Circle', random(0, 800), random(0, 600), { radius = random(50, 100) })
end

function SecondRoom:deactivate()
  active = false
end
