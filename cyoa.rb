def instructions
  puts ""
  puts "Welcome to the game of".center(80)
  puts "    _____ _             ____                         __   _____ _
   |_   _| |__   ___   / ___|__ ___   _____    ___  / _| |_   _(_)_ __ ___   ___
     | | | '_ \\ / _ \\ | |   / _` \\ \\ / / _ \\  / _ \\| |_    | | | | '_ ` _ \\ / _ \\
     | | | | | |  __/ | |___ (_| |\\ V /  __/ | (_) |  _|   | | | | | | | | |  __/
     |_| |_| |_|\\___|  \\____\\__,_| \\_/ \\___|  \\___/|_|     |_| |_|_| |_| |_|\\___|"
  puts ""
  puts "~~~~ A Choose Your Own Adventure Game ~~~~".center(80)
  puts "This is a game where you choose what happens next in the story. It all depends on the choices you make. How does the story end? Only you can find out! And the best part is that you can start over and go ahead until you've had not one but many incredibly daring experiences!\n\n"
  puts "Each step of the way you'll pick which path you take by typing the corresponding number and pressing Enter.\n\n"
  puts "To get started, type 'start'"
end

def prompt(*args)
    print(*args)
    gets
end

instructions

#prompt for start
start = prompt
if prompt == "start"
  puts "Please type 'start'"
  prompt
end

puts "This is stop one"