function love.load()
    Windfield = require'libraries/windfield'
    world = Windfield.newWorld(0, 0)
    a = {}
    a.radius = 50
    a.collider = world:newCircleCollider(50, 50, 20)
    VectorX = 0
    VectorY = 0

    b = {}
    b.x = 100
    b.y = 100
    b.radius = 50
    b.collider = world:newRectangleCollider(100, 100, 60, 60)
    b.collider:setType('static')
end

function love.update(dt)
    if love.keyboard.isDown( "w" ) or love.keyboard.isDown( "up" ) then
        VectorY = -1
    elseif love.keyboard.isDown( "s" ) or love.keyboard.isDown( "down" ) then
        VectorY = 1
    elseif love.keyboard.isDown( "d" ) or love.keyboard.isDown( "right" ) then
        VectorX = 1
    elseif love.keyboard.isDown( "a" ) or love.keyboard.isDown( "left" ) then
        VectorX =  -1
    else 
        VectorX = 0
        VectorY = 0
    end

    world:update(dt)
    a.collider:setLinearVelocity(VectorX * 300, VectorY * 300)
end

function love.draw()
    world:draw()
end