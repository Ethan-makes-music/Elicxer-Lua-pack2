--Vars
local num = 1

--Code
print("Start the chain!")

local PlayerInput = tonumber(io.read())

if PlayerInput == num then
    num = num + 1
else
    print("Ahh you broke the chain at: " ..num)
end

PlayerInput = tonumber(io.read())

if PlayerInput == num then
    num = num + 1
else 
    print("Ahh you broke the chain at: " ..num)
end

PlayerInput = tonumber(io.read())

if PlayerInput == num then
    print("You have gotten to the end congrats!")
else 
    print("Ahh you broke the chain at: " ..num)
end