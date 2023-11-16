# Write a Python program to insert an element in a given list after every n-th position

def insert_element_at_nth_positions(original_list, element_to_insert, n):
    result_list = []
    for i, item in enumerate(original_list, 1):
        result_list.append(item)
        if i % n == 0:
            result_list.append(element_to_insert)
    return result_list


try:
    original_list = input("Enter a list of elements separated by spaces: ").split()
except ValueError:
    print("Invalid input. Please enter a valid list of elements.")
    exit()

element_to_insert = input("Enter the element to insert: ")

try:
    n = int(input("Enter the value of n: "))
except ValueError:
    print("Invalid input. Please enter a valid integer.")
    exit()

result_list = insert_element_at_nth_positions(original_list, element_to_insert, n)

print("Original List:", original_list)
print(f"List after inserting '{element_to_insert}' after every {n}th position:", result_list)
