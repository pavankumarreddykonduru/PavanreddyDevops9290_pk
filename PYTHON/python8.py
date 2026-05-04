# python7 extension and correct output

x = [1, 2]
y = x + [3]

print(f"x: {x}")  # x: [1, 2] (Original remains unchanged)
print(f"y: {y}")  # y: [1, 2, 3] (New list created)


# Explanation: The expression x + [3] creates a third list in memory that combines the contents of x and the temporary list [3]. 
# Since it returns this new list, y captures it perfectly.

# Using copy menthod

""" x = [1, 2]
y = x.copy()  # Create a separate copy of the list
y.append(3)   # Modify the copy in-place

print(f"x: {x}")  # x: [1, 2]
print(f"y: {y}")  # y: [1, 2, 3] """

""" Explanation: By calling .copy(), you ensure that x and y point to different 
locations in your computer's memory. 
When you call .append() on y, the "original" x is safely out of reach. """

# Using List Unpacking (Python 3.5+)

""" x = [1, 2]
y = [*x, 3]

print(f"x: {x}")  # x: [1, 2]
print(f"y: {y}")  # y: [1, 2, 3]
 """


# Explanation: The * (splat) operator "unpacks" the contents of x into a new list literal, 
# and we simply add 3 as the last element.


# Here is the step-by-step breakdown of how Python processes print(f"y: {y}"):

""" Step 1: The f PrefixWhen Python sees the f sitting just outside the opening quote (f"), it flags that string as a Formatted String Literal. This tells the interpreter: "Don't just print this; look inside for variables to calculate.

"Step 2: The Literal TextPython begins building the string. It sees y:  (the letter y, a colon, and a space). Because these are not inside curly braces, Python treats them as literal text and adds them to the output buffer exactly as they appear.

Step 3: The Curly Braces { } (The Expression)Python encounters the {y}. This is the "placeholder."It stops treating the characters as text.It looks into your program's memory to find the variable named y.It retrieves the value of y (which, in our previous example, was the list [1, 2, 3]).

Step 4: String ConversionThe variable y is a List object, but a print statement needs String characters. Python automatically calls the "string representation" of that object.It converts the list [1, 2, 3] into the literal characters '[', '1', ',', ' ', etc.

Step 5: The Final MergePython stitches the literal text from Step 2 and the converted value from Step 4 together into one single string:"y: " + "[1, 2, 3]" $\rightarrow$ "y: [1, 2, 3]"Step 6: The print() FunctionFinally, the print() function receives that completed string and sends it to your console/terminal for you to see. """