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
    puts "I accept the following commands
    - help : displays this help message
    - list : displays the list message
    - play : lets you choose which song to play
    - exit : exits this program"
end

def list(songs)
    songs.each_with_index { |song, i| puts "#{i + 1}. #{song}"}
end

def play(songs)
    puts "Please enter a song name or number:"
    song_name = gets.chomp
    if (1..9).to_a.include?(song_name.to_i)
            puts "Playing #{songs[song_name.to_i - 1]}"
    elsif songs.include?(song_name)
        puts "Playing #{song_name}"
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    help
    puts "Please enter a command:"
    command = gets.chomp
    until command == "exit"
        if command == "help"
            help
        elsif command == "list"
            list(songs)
        elsif command == "play"
            play(songs)
        elsif command == "exit"
            exit_jukebox
        end
    puts "Please enter a command:"
    command = gets.chomp
    end
    exit_jukebox
end