# Write a Python program to check if the given number is prime (accept from the user)
def prime_check(num):
    if num == 0 or num == 1:
        return False

    for i in range(2, int(num / 2) + 1):
        if num % i == 0:
            return False

    return True


number = int(input("Enter the number: "))
try:
    number = int(number)
except ValueError:
    print("Invalid input. Please enter a valid integer.")
    exit()

if prime_check(number):
    print("{} is a prime number.".format(number))
else:
    print("{} is not a prime number.".format(number))
