# Write a Python program to remove an empty tuple(s) from a list of tuples
def remove_empty_tuples(tup_list):
    return [tup for tup in tup_list if tup]


try:
    tuple_list = eval(input("Enter a list of tuples: "))
    if not isinstance(tuple_list, list):
        raise ValueError("Input is not a list.")
except Exception as e:
    print(f"Invalid input. {e}")
    exit()

filtered_tuples = remove_empty_tuples(tuple_list)

print("Original List of Tuples:", tuple_list)
print("List of Tuples without Empty Tuples:", filtered_tuples)
