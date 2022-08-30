require './book'
require './teacher'
require './student'
require './rental'
require 'json'

def load_data
  students = load_students
  teachers = load_teachers
  books = load_books(students, teachers)
  
  return [books, students, teachers]
end

def load_books(students, teachers)
  books = []
  people = students + teachers

  unless File.exist?('./data/books.json')
    return books
  end

  booksData = JSON.parse(File.read('./data/books.json'))

  unless booksData.empty?
    booksData.each do |book|
      newBook = Book.new(book["title"], book["author"])
      create_rentals(newBook, book["rentals"], people)
      books.push(newBook)
    end
  end

  return books
end

def create_rentals(book, rentals, people)
  unless rentals.empty?
    rentals.each do |rental|
      people.each do |person|
        if rental["person_id"] == person.id
          rental = Rental.new(rental["date"], book, person)
          book.add_rental(rental)
          person.add_rental(rental)
        end
      end
    end
  end
end

def load_teachers
  teachers = []

  unless File.exist?('./data/teachers.json')
    return teachers
  end

  teachersData = JSON.parse(File.read('./data/teachers.json'))

  unless teachersData.empty?
    teachersData.each do |teacher|
      teachers.push(Teacher.new(teacher["age"], teacher["specialization"], teacher["name"], teacher["id"], parent_permission: teacher["parent_permission"]))
    end
  end

  return teachers
end

def load_students
  students = []

  unless File.exist?('./data/students.json')
    return students
  end

  studentsData = JSON.parse(File.read('./data/students.json'))

  unless studentsData.empty?
    studentsData.each do |student|
      students.push(Student.new(student["age"], student["name"], student["classroom"], student["id"], parent_permission: student["parent_permission"]))
    end
  end

  return students
end
