a, b, c = map(int, input().split())
print(a, b, c)

""" Explanation
input() → always returns string
input() → takes input as a string ("5 10 15")
.split() → splits into ["5", "10", "15"]
map(int, ...) → converts each to integers [5, 10, 15]
a, b, c = ... → assigns values:
a = 5
b = 10
c = 15
print(a, b, c) → prints them separated by spaces """

""" Why input as string
Think of input() like reading from a keyboard as text, just like typing in a chat box.
x = input()
print(type(x))

input 
5
o/p
<class 'str'> """