class Library

  def initialize(books)
    @books = books
  end

  def get_books()
    return @books
  end

  def find_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
    return nil
  end


  def find_rental_details(title)
    book = find_by_title(title)
    return book[:rental_details] if book != nil
    return nil
  end

  def add_book(title)
    new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books << new_book
  end

def rent_book(title, student, date)
  book = find_by_title(title)
  book[:rental_details] = {student_name: student, date: date}
end

end
