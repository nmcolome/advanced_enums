class Snack
  attr_reader :name, :quantity
  
  def initialize(args)
    @name = args[:name]
    @quantity = args[:quantity]
  end
end
