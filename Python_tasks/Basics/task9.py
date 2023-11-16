# Write a Python program to concatenate N strings
def concatenate_strings(strings):
    result = ""
    for string in strings:
        result += string
    return result


try:
    n = int(input("Enter the number of strings: "))
except ValueError:
    print("Invalid input. Please enter a valid integer.")
    exit()

strings = []
for i in range(n):
    string = input(f"Enter string {i+1}: ")
    strings.append(string)

concatenated_string = concatenate_strings(strings)
print("Concatenated String:", concatenated_string)
