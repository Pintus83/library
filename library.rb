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
end

# define a class for the library

class Library
  attr_accessor :available_books

  def initialize
    @available_books = []
  end
end