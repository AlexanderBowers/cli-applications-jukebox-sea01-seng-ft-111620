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

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  puts "Please enter a command:"
  until input == "exit"
    puts "Please enter a command:"
    input = gets.strip
    if input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    elsif input == "help"
      help
    end
  end
  exit_jukebox
end
