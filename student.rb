require_relative 'person'

class Student < Person
  attr_accessor :name, :classroom

  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(age, name: name, parent_permission: parent_permission)
    @classroom = classroom
    @name = name
    @classroom = nil
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
