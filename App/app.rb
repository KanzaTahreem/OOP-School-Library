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

  def list_all_people
    if @people_list.empty?
      puts 'No record found! Add a person...'
    else
      puts 'All people in the library'
      @people_list.each do |person|
        puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
    @parent.show_menu
  end
end
