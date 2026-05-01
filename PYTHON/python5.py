words = ["I", "am", "learning", "Devops"]
result = " ".join(words)
print(result)


""" Explanation

words is a list of strings:

["I", "am", "learning", "Devops"]
" ".join(words):
" " → separator (space)
.join(words) → combines all list elements into one string

So it becomes like this:

"I am learning Devops" """

""" Key idea
join() is used to combine a list of strings into a single string
The string before .join() acts as the separator """