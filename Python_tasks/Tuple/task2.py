# Write a Python program to get the 3th element and 3th element from last of a tuple
def get_elements(tuple_data):
    if len(tuple_data) < 3:
        print("Tuple does not have enough elements.")
        return None, None

    third_elem = tuple_data[2]
    third_elem_from_last = tuple_data[-3]

    return third_elem, third_elem_from_last


try:
    input_tuple = eval(input("Enter a tuple: "))
    if not isinstance(input_tuple, tuple):
        raise ValueError("Input is not a tuple.")
except Exception as ex:
    print(f"Invalid input. {ex}")
    exit()

third_element, third_from_last = get_elements(input_tuple)

if third_element is not None:
    print(f"The 3rd element is: {third_element}")
    print(f"The 3rd element from the last is: {third_from_last}")
