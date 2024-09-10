# Library Management System

This is a simple **Library Management System** written in Ruby. It allows users to manage books in a library, let customers borrow and return books, and track the number of available copies.

## Features

- Add books to the library catalog.
- Allow customers to borrow books if copies are available.
- Allow customers to return borrowed books.
- Display the library catalog with the number of available copies for each book.

## Classes

### `Book`

Represents a book with:
- `title`: The title of the book.
- `author`: The author of the book.
- `copies`: The number of available copies.

### `Customer`

Represents a customer with:
- `name`: The customer's name.
- `borr_book`: A list of books borrowed by the customer.

#### Methods:
- `borrow(book)`: Allows the customer to borrow a book if copies are available.
- `take_back(book)`: Allows the customer to return a borrowed book.

### `Library`

Represents the library with:
- `available_books`: A list of books available in the library.

#### Methods:
- `add_book(book)`: Adds a book to the library.
- `show`: Displays the current list of available books in the library, along with the number of copies.

## Usage

1. Clone or download this repository to your local machine.
2. Ensure you have Ruby installed (version 2.7 or later is recommended).
3. Run the project with:
    ```bash
    ruby library.rb
    ```

4. The script will:
   - Create a library.
   - Add books to the library.
   - Create customers.
   - Allow customers to borrow and return books.
   - Display the catalog of available books before and after actions.

### Example Output

Added: The Lord of The Rings by J.R.R. Tolkien, number of copies: 3
Added: 1984 by G. Orwell, number of copies: 4
Added: Harry Potter by J.K. Rowling, number of copies: 6
This is our catalogue:
The Lord of The Rings by J.R.R. Tolkien, Copies available: 3
1984 by G. Orwell, Copies available: 4
Harry Potter by J.K. Rowling, Copies available: 6
Marco is borrowing: The Lord of The Rings
Diletta is borrowing: Harry Potter
This is our catalogue:
The Lord of The Rings by J.R.R. Tolkien, Copies available: 2
1984 by G. Orwell, Copies available: 4
Harry Potter by J.K. Rowling, Copies available: 5
Marco is borrowing: 1984
Diletta is borrowing: 1984
This is our catalogue:
The Lord of The Rings by J.R.R. Tolkien, Copies available: 2
1984 by G. Orwell, Copies available: 2
Harry Potter by J.K. Rowling, Copies available: 5
Marco took back this book: The Lord of The Rings
Diletta took back this book: 1984
This is our catalogue:
The Lord of The Rings by J.R.R. Tolkien, Copies available: 3
1984 by G. Orwell, Copies available: 3
Harry Potter by J.K. Rowling, Copies available: 5

## How to Extend the Project

Here are a few ideas to extend this project:
- **Search Functionality**: Add a method to search for books by title or author.
- **Borrowing Limits**: Implement a borrowing limit for customers (e.g., a customer can only borrow 3 books at a time).
- **Track Borrowing History**: Keep a record of which customers borrowed which books, and when.

## License

This project is open source
