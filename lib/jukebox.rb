require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end
  
def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.strip
  indices = []
  songs.each_with_index do |song, index|
    indices.push((index + 1).to_s)
  end
  if songs.include?(song_name)
    puts "Playing #{song_name}"
    elsif indices.include?(song_name)
    puts "Playing #{songs[(song_name.to_i) - 1]}"
    elsif !songs.include?(song_name)
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  if user_input == "exit"
    exit_jukebox
  end
  if user_input == "help"
    help
  end
  if user_input == "list"
    list(songs)
  end
  if user_input == "play"
    play(songs)
  end
end








