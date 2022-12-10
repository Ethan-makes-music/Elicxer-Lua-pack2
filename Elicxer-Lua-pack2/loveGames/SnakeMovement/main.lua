function love.load()
    --Player stuff
    Player = {}
    Player.x = 50
    Player.y = 50
    Player.radius = 50

    --Movement Vars
    MovingX = true
    XPositive = true

    MovingY = false
    YPositive = false
end

function love.update(dt)
    --X Pos Stuff
    if MovingX == true and XPositive == true then
        Player.x = Player.x + 5
    elseif MovingX == true and XPositive == false then
        Player.x = Player.x + -5
    end

    --Y Pos Stuff
    if MovingY == true and YPositive == true then
        Player.y = Player.y + 5 --Remember, this makes the player go down
    elseif MovingY == true and YPositive == false then
        Player.y = Player.y + -5
    end

    --Movement
    if love.keyboard.isDown( "d" ) then
        MovingX = true
        XPositive = true
        MovingY = false
        YPositive = false
    elseif love.keyboard.isDown( "a" ) then
        MovingX = true
        XPositive = false
        MovingY = false
        YPositive = false
    elseif love.keyboard.isDown( "w" ) then
        MovingX = false
        XPositive = false
        MovingY = true
        YPositive = false
    elseif love.keyboard.isDown( "s" ) then
        MovingX = false
        XPositive = false
        MovingY = true
        YPositive = true
    end
end

function love.draw()
    love.graphics.circle("fill", Player.x, Player.y, Player.radius)
end