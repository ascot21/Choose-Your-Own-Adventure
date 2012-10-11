require_relative 'story'

class Game

  attr_reader :score

  def initialize
    @maingame = Story.new
    @score = 0
  end

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
  puts "\nThis is a game where you choose what happens next in the story. It all depends on the choices you make. How does the story end? Only you can find out! And the best part is that you can start over and go ahead until you've had not one but many incredibly daring experiences!\n\n"
  puts "Each step of the way you'll pick which path you take by typing the corresponding number and pressing Enter.\n\n"
  puts "To get started, type your name."
  end

  #prompt helper
  def prompt(*args)
    print(*args)
    gets
  end

  def get_user_name
    name = gets
    puts "Hello #{name}"
  end

  def load_next(id)
    item = @maingame.get_fork(id)
    while item.finish == "false"
      puts item.story.to_s
      route = Integer(gets)
      until route == 1 || route == 2
        puts "Please enter a 1 or 2."
        route = Integer(gets)
      end
      if route == 1
        next_fork = item.path1
      elsif route == 2
        next_fork = item.path2
      end
      item = @maingame.get_fork(next_fork)
      @score += 10
    end
    game_over
  end

  def clear_screen
    puts "\e[H\e[2J"
  end

  def game_over
    puts "\e[H\e[2J"
    puts "   ____                         ___                 _
  / ___| __ _ _ __ ___   ___   / _ \\__   _____ _ __| |
 | |  _ / _` | '_ ` _ \\ / _ \\ | | | \\ \\ / / _ \\ '__| |
 | |_| | (_| | | | | | |  __/ | |_| |\\ V /  __/ |  |_|
  \\____|\\__,_|_| |_| |_|\\___|  \\___/  \\_/ \\___|_|  (_)"

  puts "You scored #{@score} points!"
  end



end