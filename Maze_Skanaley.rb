############################################################
#
# Name:        Sean Kanaley
# Assignment:  Maze Final
# Date:        3/17/2017
# Class:       CIS 282
# Description: Write a Ruby program which will solve a simple maze which will be provided
#
############################################################

maze = []

def maze_open(maze_name)
  maze = []
  mz_file = File.open(maze_name)

  while !mz_file.eof?
    maze << mz_file.gets.chomp.split('')
  end
  mz_file.close
  return maze
end

def print_maze(mz)
  row = 0
  while row < mz.count
    col = 0
    while col < mz[row].count
      print mz[row][col]
      col += 1
    end
    row += 1
    puts
  end
end


def place_zeros(mz)
  s_row = 0
  s_col = 0
  row = 0
  while row < mz.count
    col = 0
    while col < mz[row].count
      if mz[row][col] == 'S'
        s_row = row
        s_col = col

      end
      col += 1
    end
    row += 1
  end

  if mz[s_row - 1][s_col] == ' '
    mz[s_row - 1][s_col] = 0
  end

  if mz[s_row + 1][s_col] == ' '
    mz[s_row + 1][s_col] = 0
  end

  if mz[s_row ][s_col - 1] == ' '
    mz[s_row ][s_col - 1] = 0
  end

  if mz[s_row ][s_col + 1] == ' '
    mz[s_row ][s_col + 1] = 0
  end
end



def recursive_maze_solver(mz)
  index = 0
  f_located = false

  while !f_located
    row = 0
    while row < mz.count
      col = 0
      while col < mz[row].count
        if mz[row][col] == index
          if mz[row - 1][col] == ' '
            mz[row - 1][col] = index + 1
          end
          if mz[row + 1][col] == ' '
            mz[row + 1][col] = index + 1
          end
          if mz[row ][col - 1] == ' '
            mz[row ][col - 1] = index + 1
          end
          if mz[row ][col + 1] == ' '
            mz[row ][col + 1] = index + 1
          end

          if mz[row][col] == index
            if mz[row - 1][col] == 'F'
              f_located = true
              f_col = col
              f_row = row - 1
            end
            if mz[row + 1][col] == 'F'
              f_located = true
              f_col = col
              f_row = row + 1
            end
            if mz[row][col - 1] == 'F'
              f_located = true
              f_col = col - 1
              f_row = row
            end
            if mz[row][col + 1] == 'F'
              f_located = true
              f_col = col + 1
              f_row = row
            end
          end
        end

        col += 1
      end
      row += 1
    end
    index += 1
  end

  steps_taken = index


  row = f_row
  col = f_col
  while index > 0
    if mz[row - 1][col] == index - 1
      mz[row - 1][col] = '*'
      row -= 1
    end

    if mz[row + 1][col] == index - 1
      mz[row + 1][col] = '*'
      row += 1
    end

    if mz[row][col - 1] == index - 1
      mz[row][col - 1] = '*'
      col -= 1
    end

    if mz[row][col + 1] == index - 1
      mz[row][col + 1] = '*'
      col += 1
    end
    index -= 1
  end

  row = 0
  while row < mz.count
    col = 0
    while col < mz[row].count
      if mz[row][col].is_a?(Fixnum)
        mz[row][col] = ' '
      end
      col += 1
    end
    row += 1
  end
  print_maze(mz)
  puts "It took #{steps_taken} steps to complete the maze."
  puts
end

def menu(menu_items, prompt)
  menu_items.each_with_index do | item, item_number |
    puts "#{item_number + 1}. #{item}"
  end
  print prompt
  user_choice = gets.to_i
  return user_choice
end




user_menu = [
    "Maze1",
    "Maze2",
    "Maze3",
    "Maze4",
    "Maze5",
    "Maze6",
    "Maze7",
    "Maze8",
    "Maze9",
    "Maze10",
    "Quit"

]


while user_choice = menu(user_menu, "Please choose a maze to solve: ")
  case user_choice

    when 1
      maze = maze_open("maze#{user_choice}.mz")
      print_maze(maze)
      place_zeros(maze)
      recursive_maze_solver(maze)


    when 2
      maze = maze_open("maze#{user_choice}.mz")
      print_maze(maze)
      place_zeros(maze)
      recursive_maze_solver(maze)
    when 3
      maze = maze_open("maze#{user_choice}.mz")
      print_maze(maze)
      place_zeros(maze)
      recursive_maze_solver(maze)
    when 4
      maze = maze_open("maze#{user_choice}.mz")
      print_maze(maze)
      place_zeros(maze)
      recursive_maze_solver(maze)
    when 5
      maze = maze_open("maze#{user_choice}.mz")
      print_maze(maze)
      place_zeros(maze)
      recursive_maze_solver(maze)
    when 6
      maze = maze_open("maze#{user_choice}.mz")
      print_maze(maze)
      place_zeros(maze)
      recursive_maze_solver(maze)
    when 7
      maze = maze_open("maze#{user_choice}.mz")
      print_maze(maze)
      place_zeros(maze)
      recursive_maze_solver(maze)
    when 8
      maze = maze_open("maze#{user_choice}.mz")
      print_maze(maze)
      place_zeros(maze)
      recursive_maze_solver(maze)
    when 9
      maze =  maze_open("maze#{user_choice}.mz")
      print_maze(maze)
      place_zeros(maze)
      recursive_maze_solver(maze)
    when 10
      maze = maze_open("maze#{user_choice}.mz")
      print_maze(maze)
      place_zeros(maze)
      recursive_maze_solver(maze)
    when 11
      abort("Exiting")
  end
end


