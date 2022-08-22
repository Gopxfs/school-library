require './person'
# Teacher's information/actions in the library.
class Teacher < Person
  attr_reader :specialization

  def initialize(age, name, specialization)
    super
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
