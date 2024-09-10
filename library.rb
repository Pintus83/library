# define a class for books

class Book
  attr_accessor :title, :author, :copies

  def initialize(title, author, copies)
    @title = title
    @author = author
    @copies = copies
  end
end

# define a class for customers with an empty array for books to borrow

class Customer
  attr_accessor :name, :borr_book

  def initialize(name)
    @name = name
    @borr_book = []
  end

  def borrow(book)
    if book.copies > 0
      @borr_book << book
      book.copies -= 1
      puts "#{name} is borrowing: #{book.title}"
    else
      puts "Sorry, we don't have enough copies of this book."
    end
  end

  def take_back(book)
    if @borr_book.include?(book)
      @borr_book.delete(book)
      book.copies += 1
      puts "#{name} took back this book: #{book.title}"
    else
      puts "#{name}, you didin't borrow this book"
    end
  end

end

# define a class for the library, inizialize an emprty array to populate with books

class Library
  attr_accessor :available_books

  def initialize
    @available_books = []
  end

  def add_book(book)
    @available_books << book
    puts "Added: #{book.title} by #{book.author}, number of copies: #{book.copies}"
  end

  def show
    puts "This is our catalogue:"
    @available_books.each {|book| puts book}
  end

end

# create a library

comunal = Library.new

# create books

book1 = Book.new("The Lord of The Rings", "J.R.R. Tolkien", 3)
book2 = Book.new("1984", "G. Orwell", 4)
book3 = Book.new("Harry Potter", "J.K. Rowling", 6)

# add the books to the library

comunal.add_book(book1)
comunal.add_book(book2)
comunal.add_book(bbok3)

# create two users

customer1 = Customer.new("Marco")
customer2 = Customer.new("Diletta")

# show the list of Books 

comunal.show

# borrow some books 

customer1.borrow(book1)
customer2.borrow(book3)

# show the list again to show changes

comunal.show

# borrow more books

customer1.borrow(book2)
customer2.borrow(book2)

# show the list again to show changes

comunal.show

# take basck some books

customer1.take_back(book1)
customer2.take_back(book2)

# show the list again to show changes

comunal.show

