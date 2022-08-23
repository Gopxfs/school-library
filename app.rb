require "./methods/create_person"
require "./methods/create_book"

class App
  def initialize
    @students = []
    @teachers = []
    @books = []
  end

  def display_options
    print "[1] List all books
[2] List all people
[3] Add a person
[4] Add a book
[5] Add a rental
[6] List all rentals for a given person id
[7] Exit\n
Select an option by typing its number\n"
  end

  def main
    loop do
      display_options
      option = gets.chomp.to_i
      if (1..7).include?(option)
        run(option)
      else
        puts "Sorry, this option doesn't exist.\n"
        sleep(0.8)
      end
      break if option == 7
    end
  end

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
    puts 'Booklist: '
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}"}
    puts
  end

  def list_people
    puts 'Teachers:'
    @teachers.each { |teacher| puts "Name: #{teacher.name}, Age: #{teacher.age}, ID: #{teacher.id}" }
    puts 'Students:'
    @students.each { |student| puts "Name: #{student.name}, Age: #{student.age}, ID: #{student.id}" }
    puts
  end

  def add_person
    print 'Do you want to add a student[1] or a teacher[2]? (Input the number): '
    option = gets.chomp.to_i
    case option
    when 0
      nil
    when 1
      @students.push(create_person("Student")) #imported 
    when 2
      @teachers.push(create_person("Teacher")) #imported 
    else
      puts 'Please insert a valid option or [0] to return.'
      sleep(0.8)
      add_person
    end
  end

  def add_book
    @books.push(create_book)
  end

  def add_rental
    puts 'create_rental'
  end

  def list_rental
    puts 'list_rental'
  end
end

app = App.new
app.main
