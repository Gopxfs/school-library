class App
  def initialize
    @options = ["Error", list_books, list_people, add_person, add_book, add_rental, list_rental]
  end

  def run(option)
    option = option.to_i

    if (1..7) === option
      puts @options[option]
    else
      puts "Sorry, this option doesn't exist.\n"
      sleep(0.8)
      main
    end
  end
  
  def list_books
    "list_books"
  end

  def list_people
    "list_people"
  end

  def add_person
    "create_person"
  end

  def add_book
    "create_book"
  end

  def add_rental
    "create_rental"
  end

  def list_rental
    "list_rental"
  end
end

def main
  print "
[1] List all books
[2] List all people
[3] Add a person
[4] Add a book
[5] Add a rental
[6] List all rentals for a given person id
[7] Exit

Select an option by typing its number
"

  option = gets.chomp
  app = App.new
  app.run(option)
end

main
