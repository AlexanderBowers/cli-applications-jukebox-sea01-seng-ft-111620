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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  count = 0
  songs.each do |counter|
    puts "#{count + 1}. #{counter}"
    count += 1
  end
end

def play(songs)
  current_song = ""
  puts "Please enter a song name or number:"
  song_choice = gets.strip
    #binding.pry
  current_song = "#{songs[song_choice.to_i - 1]}"
  #binding.pry
  current_song
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  puts "Please enter a command:"
  input = gets.strip
  until input == "exit"
    if input == "play"
      play(songs)
      puts "Please enter a command:"
      input = gets.strip
    elsif input == "list"
      list(songs)
      puts "Please enter a command:"
      input = gets.strip
    elsif input == "help"
      help
      puts "Please enter a command:"
      input = gets.strip
    end
  end
  exit_jukebox

end
