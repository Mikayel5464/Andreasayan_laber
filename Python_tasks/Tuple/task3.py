# Write a Python program to remove an item from a tuple.
def remove_from_tuple(existing_tuple, item_to_remove):
    new_tuple = tuple(element for element in existing_tuple if element != item_to_remove)
    return new_tuple


try:
    existing_tuple = eval(input("Enter an existing tuple: "))
    if not isinstance(existing_tuple, tuple):
        raise ValueError("Input is not a tuple.")
except Exception as e:
    print(f"Invalid input. {e}")
    exit()

item_to_remove = eval(input("Enter the item to remove from the tuple: "))

new_tuple = remove_from_tuple(existing_tuple, item_to_remove)

print("Original Tuple:", existing_tuple)
print("New Tuple:", new_tuple)
