class App
  
  def initialize
    @options = ["Error", "b"]
  end

  def run(option)
    option = option.to_i
    if (1..7) === option
      puts @options[option]
    else
      puts "Sorry, this options doesn't exist.\n"
      sleep(0.8)
      main
    end

  end
end

def main
  print "Please choose an option by entering a number:
1 - List all books
2 - List all people
3 - Create a person
4 - Create a book
5 - Create a rental
6 - List all rentals for a given person id
7 - Exit
"
option = gets.chomp
  app = App.new
  app.run(option)
end

main
