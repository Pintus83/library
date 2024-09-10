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

# define a class for the library

class Library
  attr_accessor :available_books

  def initialize
    @available_books = []
  end
end