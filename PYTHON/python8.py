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


