# Write a Python program to print all divisors of the given integer (accept from the user)
def print_divisors(num):
    divisors_list = []

    for i in range(1, num + 1):
        if number % i == 0:
            divisors_list.append(i)

    return divisors_list


user_input = input("Enter an integer: ")
try:
    number = int(user_input)
except ValueError:
    print("Invalid input. Please enter a valid integer.")
    exit()

divisors = print_divisors(number)
print(f"The divisors of {number} are: {divisors}")
