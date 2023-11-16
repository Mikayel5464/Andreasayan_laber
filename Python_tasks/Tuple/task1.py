# Write a Python program to add an item in a tuple
def add_to_tuple(exist_tup, new_item):
    new_tuple = exist_tup + (new_item,)
    return new_tuple


try:
    existing_tuple = eval(input("Enter an existing tuple: "))
    if not isinstance(existing_tuple, tuple):
        raise ValueError("Input is not a tuple.")
except Exception as ex:
    print(f"Invalid input. {ex}")
    exit()

new = input("Enter the item to add to the tuple: ")

new_tup = add_to_tuple(existing_tuple, new)

print("Original Tuple:", existing_tuple)
print("New Tuple:", new_tup)
