function love.load()
    player = {}
    player.x = 300
    player.y = 300
end

function love.update(dt)
    --I swear I'm not yandere Dev with all of these if statements
    if love.keyboard.isDown( "w" ) or love.keyboard.isDown( "up" ) then
        player.y = player.y - 3
    elseif love.keyboard.isDown( "s" ) or love.keyboard.isDown( "down" ) then
        player.y = player.y + 3
    elseif love.keyboard.isDown( "d" ) or love.keyboard.isDown( "right" ) then
        player.x = player.x + 3
    elseif love.keyboard.isDown( "a" ) or love.keyboard.isDown( "left" ) then
        player.x = player.x - 3
    end

    if love.keyboard.isDown( "w" ) and love.keyboard.isDown("space") then
        player.y = player.y - 5
    elseif love.keyboard.isDown( "s" ) and love.keyboard.isDown( "space" ) then
        player.y = player.y + 5
    elseif love.keyboard.isDown( "d" ) and love.keyboard.isDown( "space" ) then
        player.x = player.x + 5
    elseif love.keyboard.isDown( "a" ) and love.keyboard.isDown( "space" ) then
        player.x = player.x - 5
    end

    if love.keyboard.isDown( "up" ) and love.keyboard.isDown("space") then
        player.y = player.y - 5
    elseif love.keyboard.isDown( "down" ) and love.keyboard.isDown( "space" ) then
        player.y = player.y + 5
    elseif love.keyboard.isDown( "right" ) and love.keyboard.isDown( "space" ) then
        player.x = player.x + 5
    elseif love.keyboard.isDown( "left" ) and love.keyboard.isDown( "space" ) then
        player.x = player.x - 5
    end
end

function love.draw()
    love.graphics.circle("fill", player.x, player.y, 50)
end