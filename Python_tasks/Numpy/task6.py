import numpy as np

array_zeros = np.zeros((1, 3), dtype=int)
array_ones = np.ones((1, 3), dtype=int)
array_nines = np.full((1, 3), 9, dtype=int)

print("Array of 0s: \n{}".format(array_zeros))
print("\nArray of 1s: \n{}".format(array_ones))
print("\nArray of 9s: \n{}".format(array_nines))
