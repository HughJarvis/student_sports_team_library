require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class LibraryTest < MiniTest::Test

  def setup()
    book = {
      title: "lord of the rings",
      rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
    }
  }

    @library = Library.new([book])
  end


  def test_books_getter
    assert_equal([{
      title: "lord of the rings",
      rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
    }
      }], @library.get_books())
  end

  def test_can_get_book()
    book = @library.find_by_title("lord of the rings")
    assert_equal("lord of the rings", book[:title])
  end


  def test_can_get_rental_details()
    rental_details = @library.find_rental_details("lord of the rings")
    assert_equal({
    student_name: "Jeff",
    date: "01/12/16"
  }, rental_details)
  end

  def test_can_add_book()
    @library.add_book("Colour of magic")
    book = @library.find_by_title("Colour of magic")
    assert_equal({title: "Colour of magic",
      rental_details: {
         student_name: "",
         date: ""
          }}, book)
        end

        def test_can_rent_book()
          @library.rent_book("lord of the rings", "Dave", "26/03/2019")
          rental_details = @library.find_rental_details("lord of the rings")
          assert_equal({student_name: "Dave", date: "26/03/2019"}, rental_details)
        end



end
