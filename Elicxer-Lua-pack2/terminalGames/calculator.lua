print("Do you want to multiply, devide, subtract or add something by five")
local answer = io.read()

if answer == "multiply" then --this is the code that makes it multiply
    print("Enter your number!")
    number1 = io.read()
    print("Getting answer")
    print(number1 * 5)
elseif answer == "devide" then --this is the code that makes it devide
    print("Enter your number!")
    number1 = io.read()
    print("Getting answer")
    print(number1 / 5)
elseif answer == "add" then --this is the code that makes it add
    print("Enter your number!")
    number1 = io.read()
    print("Getting answer")
    print(number1 + 5)
elseif answer == "subtract" then --this is the code that makes it subtract
    print("Enter your number!")
    number1 = io.read()
    print("Getting answer")
    print(number1 - 5)
end