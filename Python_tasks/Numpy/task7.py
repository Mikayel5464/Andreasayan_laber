import numpy as np

original_array = np.arange(100).reshape((10, 10))

print("Original Array: \n{}".format(original_array))

reshaped_array1 = original_array.reshape((5, 20))
reshaped_array2 = original_array.reshape((20, 5))
reshaped_array3 = original_array.flatten()
reshaped_array4 = original_array.T

print("\nReshaped Array 1: \n{}".format(reshaped_array1))
print("\nReshaped Array 2: \n{}".format(reshaped_array2))
print("\nReshaped Array 3 (Flattened): \n{}".format(reshaped_array3))
print("\nReshaped Array 4 (Transposed): \n{}".format(reshaped_array4))
