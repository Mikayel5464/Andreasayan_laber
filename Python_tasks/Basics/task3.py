# Write a Python program which accepts a sequence of comma-separated numbers
# from user and generate a list and a tuple with those numbers

input_sequence = input("Enter a sequence of comma-separated numbers: ")
numbers_as_strings = input_sequence.split(',')

numbers_as_integers = [int(number) for number in numbers_as_strings]

numbers_list = numbers_as_integers
numbers_tuple = tuple(numbers_as_integers)

print("List:", numbers_list)
print("Tuple:", numbers_tuple)
