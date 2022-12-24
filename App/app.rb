require './Entities/student'
require './Entities/teacher'
require './Relationship/book'
require './Relationship/rental'

class App
  def initialize(parent)
    @parent = parent
    @books_list = []
    @people_list = []
    @rentals_list = []
  end

  def list_all_books
    if @books_list.empty?
      puts 'No record found! Add some books...'
    else
      puts 'Available books in the library'
      @books_list.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    end
    @parent.show_menu
  end
end
