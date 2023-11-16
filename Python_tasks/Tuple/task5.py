# Write a Python program to compute element-wise sum of given tuples
def elementwise_sum(tuples):
    if not tuples or any(len(t) != len(tuples[0]) for t in tuples):
        print("Error: Tuples must have the same length.")
        return None

    result = tuple(sum(elements) for elements in zip(*tuples))
    return result


try:
    tuple_list = eval(input("Enter a list of tuples: "))
    if not isinstance(tuple_list, list):
        raise ValueError("Input is not a list.")
except Exception as e:
    print(f"Invalid input. {e}")
    exit()

sum_result = elementwise_sum(tuple_list)

print("List of Tuples:", tuple_list)
if sum_result is not None:
    print("Element-wise Sum:", sum_result)
