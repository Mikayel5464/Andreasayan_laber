# Write a Python program to sum all the items in a list.
try:
    numbers = [int(x) for x in input("Enter a list of numbers separated by spaces: ").split()]
except ValueError:
    print("Invalid input. Please enter a valid list of numbers.")
    exit()

total_sum = sum(numbers)

print("List of Numbers:", numbers)
print("Sum of All Items:", total_sum)
