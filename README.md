Overview
========
A Ruby command line game based on widely popular series of children's books.  The game is from a second-person point of view, with the reader assuming the role of the protagonist and making choices that determine the main character's actions and the plot's outcome.

Story loosely based on "The Cave of Time" book.  See doc/story_chart.png for an overview.


Features
========
  - game instructions run when game starts
  - user inputs name which is used at the end of the game
  - user presented with "forks in the road" where you must choose with path to take
  - "forks in the road" saved in a csv file
  - each path has an assigned number of points
  - total score tabulated at the end
  - top scores save to csv file (scores command shows top scores)

Future Features
===============
- ability to add new "forks in the road" (would require user to know where in the path to place it)
- add user carrying a weapon of choice (selected at the beginning of the game)
- more ASCII art integrated
- make this a Ruby gem

Dependencies
============
Colorize gem