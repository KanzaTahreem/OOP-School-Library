# require './Entities/student'
# require './Entities/teacher'
# require './Relationship/rental'
require_relative '../Modules/book_options.rb'
require_relative '../Modules/people_options.rb'

class App
  def initialize(options)
    @options = options
    @book_options = BookOptions.new
    @people_options = PeopleOptions.new
    @rentals_list = []
  end

  def select_option(user_choice)
    case user_choice
    when '1'
      @book_options.list_all_books
    when '2'
      @people_options.list_all_people
    when '3'
      @people_options.create_person
    when '4'
      @book_options.create_book
    when '5'
      create_rental
    when '6'
      list_all_rentals
      else
        puts "Invalid option, please try again!"
      end
      @options.show_menu
  end



 

  # def create_rental
  #   puts 'Select a book from the following list by number'
  #   @books_list.each_with_index { |book, index| puts "#{index}) Title: '#{book.title}', Author: #{book.author}" }
  #   book_num = gets.chomp.to_i
  #   puts
  #   puts 'Select a person from the following list by number (not id)'
  #   @people_list.each_with_index do |person, index|
  #     puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  #   end
  #   person_num = gets.chomp.to_i

  #   print 'Date: '
  #   date = gets.chomp
  #   @rentals_list.push(Rental.new(date, @books_list[book_num], @people_list[person_num]))
  #   puts 'Rental created successfully'
  #   @parent.show_menu
  # end

  # def list_all_rentals
  #   print 'ID of person: '
  #   id = gets.chomp.to_i

  #   puts 'Rentals:'
  #   @rentals_list.each do |rental|
  #     puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}" if rental.person.id == id
  #   end
  #   @parent.show_menu
  # end

  
end
