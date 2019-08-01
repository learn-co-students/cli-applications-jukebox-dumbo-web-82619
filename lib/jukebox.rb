# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program. Goodbye"
end

def list (songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.strip
  if songs.include? (song_choice)
    puts "Playing #{song_choice}"
  elsif song_choice.to_i <= songs.length && song_choice.to_i > 0 
   puts "Playing #{songs[song_choice.to_i - 1]}"
 else
   puts "Invalid input, please try again"
 end
 end
 
 def exit_jukebox
   puts "Goodbye"
 end
 
 def run (songs)
  help
  puts "Please enter a command:"
  command = gets.strip
  case command
  when "exit"
    exit_jukebox
  when "list"
    list(songs)
    run(songs)
  when "help"
    help 
    run(songs)
  when "play" 
    play(songs)
    run(songs)
  end

end