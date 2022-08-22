require './person'
# Students' information/actions in the library.
class Student < Person
  attr_reader :classroom

  def initialize(age, name, parent_permission, classroom)
    super
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
