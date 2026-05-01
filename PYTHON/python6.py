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

