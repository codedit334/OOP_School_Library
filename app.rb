require_relative 'book'
require_relative 'person'
require_relative 'teacher'
require_relative 'student'
require_relative 'rental'

class App

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  # List all books
  def list_books
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

   # List all people.
   def list_people
    @people.each do |person|
      puts "ID: #{person.id}, Name: #{person.name}, Age: #{person.age}"
    end
  end
  
  # Create a student
  def create_student
    print 'Name:'
    name = gets.chomp

    print 'Age:'
    age = gets.chomp

    print 'Has Parent permission? [Y/N]'
    permission = gets.chomp
    permission = true if permission == 'Y' || permission == 'y'
    permission = false if permission == 'N' || permission == 'n'

    student = Student.new(age, nil, name, parent_permission: permission)
    @people.push(student)
    puts 'Student Created Successfully'
  end

  # Create a teacher
  def create_teacher
    print 'Specialization:'
    specialization = gets.chomp

    print 'Age:'
    age = gets.chomp

    print 'Name:'
    name = gets.chomp

    @people << Teacher.new(age, specialization, name, )
    puts 'Teacher Created Successfully'
  end

 
  

end