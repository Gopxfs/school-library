def save_data(books, students, teachers)
  save_books(books)
  save_students(students)
  save_teachers(teachers)
end

def save_books(books)
  booksData = []

  books.each do |book|
    rentals = []
    unless book.rentals.empty?
      book.rentals.each do |rental|
        rentals.push({date: rental.date, person_id: rental.person.id})
      end
    end

    booksData.push({
      title: book.title,
      author: book.author,
      rentals: rentals
    })
    end

    update_file("books", booksData)
end

def save_students(students)
  studentsData = []

  students.each do |student|
    studentsData.push({
      name: student.name,
      age: student.age,
      classroom: student.classroom,
      parent_permission: student.parent_permission,
      id: student.id
    })
    end

    update_file("students", studentsData)
end

def save_teachers(teachers)
  teachersData = []

  teachers.each do |teacher|
    teachersData.push({      
      name: teacher.name,
      age: teacher.age,
      specialization: teacher.specialization,
      parent_permission: teacher.parent_permission,
      id: teacher.id
    })
    end

    update_file("teachers", teachersData)
end

def update_file(name, object)
  file = "./data/#{name}.json"
  unless File.exists?(file)
    File.new(file, "w+")
  end
  File.write(file, object.to_json)
end