class Order

  attr_reader :dishes

  def initialize(menu)
    @dishes = {}
    @menu = menu
  end

  def add(dish, quantitiy)
    fail "#{dish} is not on the menu" unless menu.has_dish?(dish)
    dishes[dish] = quantitiy
  end

  private
  attr_reader :menu
end
