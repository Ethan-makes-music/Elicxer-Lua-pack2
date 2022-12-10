print("Welcome to ACTUALcalculator\nEnter the first number you want to have in your calculator")
local number1 = io.read()
print("Now enter the next number")
local number2 = io.read() 
print("Do you want to Multiply, Devide, add or subtract?")
local want = io.read()

if want == "Multiply" or "multiply" then
    print("your answer is: " ..number1 * number2)
elseif want == "Devide" or "devide" then
    print("your answer is: " ..number1 / number2)
elseif want == "Add" or "add" then
    print("your answer is: " ..number1 + number2)
elseif want == "Subtract" or "subtract" then
    print("your answer is: " ..number1 - number2)
end