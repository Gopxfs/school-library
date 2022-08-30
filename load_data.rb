require './book'
require './teacher'
require './student'
require './rental'
require 'json'

def load_data
  books = load_books
  students = load_students
  teachers = load_teachers
  
  create_rentals(books, students, teachers)
  puts "Data loaded successfully!"
  return books, students, teachers
end

def load_books
  books = []

  if File.read('./data/books.json').empty?
    return books
  end

  booksData = JSON.parse(File.read('./data/books.json'))

  unless booksData.empty?
    booksData.each do |book|
      books.push(Book.new(book.title, book.author))
    end
  end

  return books
end

def load_teachers
  teachers = []

  if File.read('./data/teachers.json').empty?
    return teachers
  end

  teachersData JSON.parse(File.read('./data/teachers.json'))

  unless teachersData.empty?
    teachersData.each do |teacher|
      teachers.push(Teacher.new(teacher.age, teacher.specialization, teacher.name, parent_permission: teacher.parent_permission))
    end
  end

  return teachers
end

def load_students
  students = []

  if File.read('./data/students.json').empty?
    return students
  end

  studentsData JSON.parse(File.read('./data/students.json'))

  unless studentsData.empty?
    studentsData.each do |teacher|
      students.push(Student.new(student.age, student.name, student.classroom, parent_permission: student.parent_permission))
    end
  end

  return students
end

def create_rentals(books, students, teachers)
  people = students + teachers
  books.each do |book|
    book.rentals.each do |rental|
      people.each do |person|
        if person.id == rental.person_id
          newRental = Rental.new(rental.date, book, person)
          book.add_rental(newRental)
          person.add_rental(newRental)
        end
      end
    end
  end
end