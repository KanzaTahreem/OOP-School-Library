require_relative './nameable.rb'

class BaseDecorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end
end
