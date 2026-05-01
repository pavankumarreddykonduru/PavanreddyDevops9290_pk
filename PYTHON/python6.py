a = "Hello" + "Python"

if a == "Hello Python":
    print("csk")
else:
    print("rcb")

"""     The Result: rcb
Why?
When you add two strings together like "Hello" + "Python", Python joins them exactly as they are. It does not automatically add a space between them.

Value of a: "HelloPython"

Comparison: "HelloPython" == "Hello Python" is False.

Therefore, the else block runs and prints "rcb". """


""" How to get "csk"?
If you want the result to be "csk", you need to include the space in one of the strings:

Python
# Option 1: Add a space in the string
a = "Hello " + "Python" 

# Option 2: Use an f-string (modern Python way)
a = f"{'Hello'} {'Python'}" """




""" Real-World Example
f-strings are most powerful when using variables or logic:

Python
name = "Gemini"
version = 3

# You can even do math inside them!
message = f"Hello from {name} version {version + 0.5}"

print(message) 
# Output: Hello from Gemini version 3.5
One tiny detail: In your specific snippet f"{'Hello'} {'Python'}", 
you used single quotes inside the double quotes. 
This is necessary so Python knows where the "inner" string ends and the "outer" f-string begins! """