# Write a Python program to get the largest number from a list.

try:
    numbers = [int(x) for x in input("Enter a list of numbers separated by spaces: ").split()]
except ValueError:
    print("Invalid input. Please enter a valid list of numbers.")
    exit()

largest_number = max(numbers)

print("List of Numbers:", numbers)
print("Largest Number:", largest_number)
