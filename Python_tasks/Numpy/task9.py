import numpy as np

array1 = np.random.uniform(0, 20, size=(10, 10))
array2 = np.random.uniform(0, 20, size=(10, 10))

concatenated_array = np.concatenate((array1, array2), axis=0)

numeric_elements = np.isfinite(concatenated_array)

numeric_matrix = np.where(numeric_elements, concatenated_array, np.nan)

print("Array 1: \n{}".format(array1))
print("\nArray 2: \n{}".format(array2))
print("\nConcatenated Array: \n{}".format(concatenated_array))
print("\nNumeric Matrix: \n{}".format(numeric_matrix))
