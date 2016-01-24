class Order

  attr_reader :dishes

  def initialize
    @dishes = {}
  end

  def add(dish, quantitiy)
    dishes[dish] = quantitiy
  end
end
