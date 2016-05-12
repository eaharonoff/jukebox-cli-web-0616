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

def help 
  puts  "I accept the following commands:" + "\n" +
  "- help : displays this help message" + "\n" +
  "- list : displats a list of songs you can play" + "\n" +
  "- play : lets you choose a song to play" + "\n" +
  "- exit : exits this program"
end

def list (songs)
  songs.each_with_index do |tune, index| 
    puts "#{index}. #{tune}"
  end
end

def play (songs)
  puts "Please enter a song name or number: "
  play = gets.chomp 
  if songs.include? play
      puts "Playing #{play}"
  elsif play.to_i <= songs.length && play.to_i > 0
      song_num = play.to_i - 1 
      puts "Playing " + songs[song_num]
  else puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help 
  puts "Please enter a command:"
  command = gets.chomp
  while command != "exit"
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    end 
    puts "Please enter a command:"
    command = gets.chomp
  end 
  exit_jukebox
end
