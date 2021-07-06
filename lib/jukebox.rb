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


def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(playlist)
  playlist.each_with_index do |track, index|
    puts "#{index + 1}. #{track}"
  end
  return playlist
end


def play(playlist)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  if input.to_i >= 1 && input.to_i <= playlist.length 
    puts "Playing #{playlist[input.to_i - 1]}."
  elsif playlist.include?(input)
    puts "Playing #{playlist.find{|track| track == input}}."
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(playlist)
  puts "Please enter a command:"
  input = gets.strip
  
  if input == "help"
    help
    run(playlist)
  elsif input == "list"
    list(playlist)
    run(playlist)
  elsif input == "play" 
    play(playlist)
    run(playlist)
  elsif input == "exit" 
    exit_jukebox
  end
end