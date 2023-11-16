# Write a Python program to count the number of tuples in a given list

def count_tuples(lst):
    count = 0
    for element in lst:
        if isinstance(element, tuple):
            count += 1

    return count


user_input = input("Enter a list of elements separated by spaces: ")
try:
    elements = eval(user_input)  # Using eval to allow tuples in the input
except Exception as e:
    print(f"Invalid input. Please enter a valid list. Error: {e}")
    exit()

tuple_count = count_tuples(elements)

print(f"The number of tuples in the list is: {tuple_count}")
