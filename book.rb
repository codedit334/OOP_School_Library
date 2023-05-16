require_relative 'person.rb'
require_relative 'rental.rb'

class Book
    attr_accessor :title, :author
  
    def initialize(title, author)
      @title = title
      @author = author
    end
  end
  
  book1 = Book.new("The Great Gatsby", "F. Scott Fitzgerald")
  book2 = Book.new("To Kill a Mockingbird", "Harper Lee")
  
  person1 = Person.new("Alice")
  person2 = Person.new("Bob")
  
  rental1 = Rental.new(book1, person1, Date.today)
  rental2 = Rental.new(book1, person2, Date.today - 7)
  rental3 = Rental.new(book2, person2, Date.today - 14)
  
  puts book1.rentals.map { |rental| rental.person.name }.join(", ")
  # Output: Alice, Bob
  
  puts person2.rentals.map { |rental| rental.book.title }.join(", ")
  # Output: The Great Gatsby, To Kill a Mockingbird
  