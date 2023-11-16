# Write a Python program to accept a filename from the user and print the extension of that.
def get_file_extension(filename):
    parts = filename.split('.')

    if len(parts) > 1:
        extension = parts[-1]
        print(f"The extension of the file is: {extension}")
    else:
        print("The file has no extension.")


filename = input("Enter the filename: ")
get_file_extension(filename)
