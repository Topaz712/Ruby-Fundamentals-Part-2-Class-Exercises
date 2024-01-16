require_relative 'dish'

class Menu
  def initialize
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def remove_dish(name)
    @dishes.reject! { |dish| dish.name == name }
  end

  def display_menu
    @dishes.map { |dish| "#{dish.name}: $#{'%.2f' % dish.price}" }.join("\n")
  end
end

menu = Menu.new
menu.add_dish(Dish.new('Spaghetti', 12.00))
menu.add_dish(Dish.new('Salad', 8.50))
menu.remove_dish('Salad')
menu.display_menu
