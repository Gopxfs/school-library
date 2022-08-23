class App
  def run(option)
    case option
    when 1
      list_books
    when 2
      list_people
    when 3
      add_person
    when 4
      add_book
    when 5
      add_rental
    when 6
      list_rental
    end
  end

  def list_books
    puts 'list_books'
  end

  def list_people
    puts 'list_people'
  end

  def add_person
    puts 'Do you want to add a student[1] or a teacher[2]? (Input the number)'
    option = gets.chomp
    puts option.to_s
  end

  def add_book
    puts 'create_book'
  end

  def add_rental
    puts 'create_rental'
  end

  def list_rental
    puts 'list_rental'
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
[7] Exit\n
Select an option by typing its number
"
  option = gets.chomp.to_i
  if (1..7).include?(option)
    app = App.new
    app.run(option)
    puts 'Exiting...'
  else
    puts "Sorry, this option doesn't exist.\n"
    sleep(0.8)
    main
  end
end

main
