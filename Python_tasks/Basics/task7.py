def count_occurrences(lst, x):
    count = 0
    for element in lst:
        if element == x:
            count += 1
    return count


user_input = input("Enter a list of numbers separated by spaces: ")
try:
    numbers = list(map(int, user_input.split()))
except ValueError:
    print("Invalid input. Please enter a valid list of numbers.")
    exit()

try:
    number_to_count = int(input("Enter the number to count: "))
except ValueError:
    print("Invalid input. Please enter a valid integer.")
    exit()

occurrences = count_occurrences(numbers, number_to_count)

print(f"The number {number_to_count} appears {occurrences} times in the list.")
