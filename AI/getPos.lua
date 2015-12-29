local

if fs.exists("AUTONOMUS/AI/data/pos") then
    os.loadAPI("AUTONOMUS/AI/data/pos")
else
    pos = {
        x = 0,
        y = 0,
        z = 0,
        direction = 1
    }
end

oldUp = turtle.up
oldDown = turtle.down
oldForward = turtle.forward
oldBack = turtle.back
oldLeft = turtle.turnLeft
oldRight = turtle.turnRight

local update = function()
    pos

turtle.up = function()
    oldUp()
    pos.y = pos.y + 1
end

