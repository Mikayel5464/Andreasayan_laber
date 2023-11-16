# Write a Python program to generate and print a list except for the first 5 elements,
# where the values are square of numbers between 1 and 50 (both included)

squares_list = [i**2 for i in range(1, 51)]

print("Original List:")
print(squares_list)
print("\nList except for the first 5 elements:")
print(squares_list[5:])
