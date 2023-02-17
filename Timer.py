import threading

# Define a function to get user input
def get_user_input():
    global InputFromUser
    InputFromUser = input("Type 'yes': ")
    if InputFromUser.lower() == 'yes':
        timer.cancel()

# Ask the user to type 'yes'
print("You have 10 seconds to type 'yes'")
timer = threading.Timer(10.0, print, "Time's up")
timer.start()

# Calling the get_user_input function
get_user_input()

# Comparing user's input and printing the message
if InputFromUser.lower() == 'yes':
    print("You typed 'yes'")
else:
    print("You are asleep")