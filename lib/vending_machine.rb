class VendingMachine
  attr_reader :inventory

  def initialize
    @inventory = []
  end

  def add_snack(snack)
    inventory << snack
  end

  def snacks_by_name
    inventory.map do |snack|
      snack.name
    end
  end

  def how_many_snacks
    inventory.group_by do |snack|
      snack.quantity
    end
  end

  def inventory_by_alphabet
    inventory.group_by do |snack|
      snack.name[0]
    end
  end

  def total_num_items
    inventory.reduce(0) do |sum, snack|
      sum + snack.quantity
    end
  end

  def first_letters
    first_letters = inventory.map do |snack|
      snack.name[0]
    end
    first_letters.join("")
  end

  def change_indexes
    index = (0...inventory.length).to_a
    index.map do |idx|
      idx + 1
    end
  end
end
