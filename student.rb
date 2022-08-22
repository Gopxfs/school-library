require './person'
# Students' information/actions in the library.
class Student < Person
  def initialize(age, classroom, name = 'Unknown')
    super(age, name)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
