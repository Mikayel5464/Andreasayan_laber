import numpy as np

rand_arr = np.random.randint(1, 200, 100)

elem = np.where(rand_arr % 10 == 6)[0]

print("Ordinary array: ", rand_arr)
print("Indices of elements ending with 6: ", elem)
