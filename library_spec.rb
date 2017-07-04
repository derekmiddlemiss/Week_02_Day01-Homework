require 'minitest/autorun'
require 'minitest/rg'
require_relative './library'

class TestSportsTeam < MiniTest::Test

  def setup
    @books = [
      {
        title: 'On The Road',
        rental_details: {
          student_name: 'Moe',
          date: '01/07/17'
        }
      },
      {
        title: 'The Dharma Bums',
        rental_details: {
          student_name: 'Larry',
          date: '02/07/17'
        }
      },
      {
        title: 'Big Sur',
        rental_details: {
          student_name: 'Curly',
          date: '03/07/17'
        }
      }
    ]
  end

  # def test_list_books
  #   library = Library.new(@books)
  #   library.list_all_books
  #   # Test here.
  # end

  def test_list_book_info
    library = Library.new(@books)
    book_listed = library.list_book_info('On The Road')
    book = [
      {
        title: 'On The Road',
        rental_details: {
          student_name: 'Moe',
          date: '01/07/17'
        }
      }
    ]
    assert_equal(book, book_listed)
  end

  def test_list_rental_info
    library = Library.new(@books)
    book_rental_details = library.list_rental_info('On The Road')
    rental_details = {
      student_name: 'Moe',
      date: '01/07/17'
    }
    assert_equal(rental_details, book_rental_details)
  end

  def test_add_book
    library = Library.new(@books)
    book_added = [
      {
        title: 'Desolation Angels',
        rental_details: {
          student_name: 'Buster',
          date: '04/07/17'
        }
      }
    ]
    library.add_book(book_added)
    assert_equal(@books.last, book_added)
  end

  def test_update_rental_details
    library = Library.new(@books)
    book_updated = library.update_rental_details('On The Road', 'Jimmy', '05/07/17')
    book = {
      title: 'On the Road',
      rental_details: {
        student_name: 'Jimmy',
        date: '05/07/17'
      }
    }
    assert_equal(book, book_updated)
  end

end