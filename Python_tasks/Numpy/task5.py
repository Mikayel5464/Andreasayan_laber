import numpy as np

original_array = np.array([[1, 2, 3],
                           [4, 5, 6],
                           [7, 8, 9]])

modified_array = original_array[:, [2, 1, 0]]

print("Original Array: \n{}".format(original_array))
print("\nModified Array (columns swapped): \n{}".format(modified_array))
