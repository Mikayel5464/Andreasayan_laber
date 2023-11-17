import numpy as np

# Create two 2D arrays
array1 = np.array([[1, 2, 3],
                   [4, 5, 6],
                   [7, 8, 9]])

array2 = np.array([[9, 8, 7],
                   [6, 5, 4],
                   [3, 2, 1]])

elementwise_multiply = array1 * array2

matrix_multiply = np.dot(array1, array2)

print("Array 1: \n{}".format(array1))
print("\nArray 2: \n{}".format(array2))
print("\nElement-wise Multiplication: \n{}".format(elementwise_multiply))
print("\nMatrix Multiplication: \n{}".format(matrix_multiply))
