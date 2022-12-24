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
end
