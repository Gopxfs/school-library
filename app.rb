class App
  def run
    puts 'Start of file!'
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
  app = App.new
  app.run
end

main
