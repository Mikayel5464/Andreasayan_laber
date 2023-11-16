# Write a Python program to remove duplicates from a list.

try:
    elements = input("Enter a list of elements separated by spaces: ").split()
except ValueError:
    print("Invalid input. Please enter a valid list of elements.")
    exit()

unique_elements = list(set(elements))

print("Original List:", elements)
print("List with Duplicates Removed:", unique_elements)
