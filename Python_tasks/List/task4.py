# Write a Python program to generate a 3x5x7 3D array who’s each element is #.

# Define the dimensions of the 3D array
depth = 3
rows = 5
columns = 7

three_d_array = [[[ '#' for _ in range(columns)] for _ in range(rows)] for _ in range(depth)]

for i in range(depth):
    print(f"Layer {i + 1}:")
    for row in three_d_array[i]:
        print(row)
