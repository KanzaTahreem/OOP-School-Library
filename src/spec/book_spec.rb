require_relative './spec_helper'

describe Book do
  context '#Add new book' do
    before :each do
      @book = Book.new 'Title', 'Author'
    end

    it 'checks the name of the book' do
      expect(@book.title).to eq 'Title'
    end

    it 'checks the author of the book' do
      expect(@book.author).to eq 'Author'
    end

    it 'takes two parameters and returns a Book object' do
      expect(@book).to be_an_instance_of Book
    end
  end

  context 'Add a rental' do
    it 'Add a rental to rentals Array' do
      @book = Book.new('Title', 'Author')
      @person = Student.new('25', 'ruby-101', 'Mohi', parent_permission: true)
      @rental = Rental.new('2020/12/12', @book, @person)

      @book.add_rental(@rental)

      expect(@book.rentals.length).to eq 1
    end
  end

  context 'convert book object to JSON' do
    it 'Check json string' do
      @book = Book.new('Title', 'Author')

      json_obj = @book.to_json.to_s

      expect(json_obj).to eq '{"json_class":"Book","title":"Title","author":"Author"}'
    end
  end

  context '>> Create an object from JSON' do
    it '>> Check json string' do
      @book = JSON.parse('{"json_class":"Book","title":"Title","author":"Author"}', create_additions: true)

      expect(@book).to be_an_instance_of Book
    end
  end
end
