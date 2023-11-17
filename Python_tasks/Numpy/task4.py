import numpy as np

list_1 = [1, 2, 3]
list_2 = [4, 5, 6]

array1 = np.array(list_1)
array2 = np.array(list_2)

result_array = np.vstack((array1, array2))

print("Array 1: {}".format(array1))
print("\nArray 2: {}".format(array2))
print("\nConcatenated Array: \n{}".format(result_array))
