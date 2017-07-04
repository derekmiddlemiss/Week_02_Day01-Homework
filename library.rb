class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  # def list_all_books
  #   @books.each { |book| print book[:title] + ", " + book[:rental_details][:student_name] + ", " + book[:rental_details][:date] + "\n" }
  # end

  def list_book_info(title)
    @books.select { |book| book[:title] == title }
  end

  def list_rental_info(title)
    @books.select { |book| return book[:rental_details] if (book[:title] == title) }
  end

  def add_book(book)
    @books << book
  end

  def update_rental_details(title, student_name, date)
    for book in books
      if book[:title] == title
        book[:rental_details][:student_name] = student_name 
        book[:rental_details][:date] = date
        return book
      end
    end
  end

end



























  # def list_books
  #   for book in books
  #     title = book[:title]
  #     student_name = book[:rental_details][:student_name]
  #     date = book[:rental_details][:student_name]
  #     if student_name != '' && date != ''
  #       puts "#{title} was rented by #{student_name} on #{date}."
  #     else
  #       puts "#{title} is available for rent."
  #     end
  #   end
  # end







