x=[1,2]
y=x.append(3)
print(y)
print(x)

""" 0/p
None
[1, 2, 3] """


""" Why does this happen?
1. append() modifies in-place
In Python, the .append() method is an in-place operation. This means it modifies the original list object directly rather than creating a new one.

2. The Return Value is None
Because the method modifies the list directly, it doesn't need to return the new list. By design, Python's in-place mutation methods (like append(), sort(), and extend()) return None.

When you write y = x.append(3), you are assigning the result of the function to y.

Since the result is None, y becomes None. """