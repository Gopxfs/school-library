require './student'
require './teacher'

def create_person(option)
  print 'Age: '
  age = gets.chomp.to_i
  print 'Name: '
  name = gets.chomp

  if option == "Student"
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp
    student = Student.new(age, name, parent_permission: parent_permission)
    return student
  else
    print 'Specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(age, specialization ,name)
    return teacher
  end

  puts "#{option} created successfully!"
  sleep(0.8)
end
