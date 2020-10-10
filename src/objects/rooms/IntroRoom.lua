IntroRoom = Object:extend()

function IntroRoom:new()
  self.active = false
  self.area = Area()
end

function IntroRoom:update(dt)
  self.area:update(dt)
end

function IntroRoom:draw()
  if self.active == true then
    self.area:draw()
  end
end

function IntroRoom:activate()
  self.active = true
  self.area:addGameObject('Circle', random(0, 800), random(0, 600), { radius = random(10, 50) })
end

function IntroRoom:deactivate()
  self.active = false
end
