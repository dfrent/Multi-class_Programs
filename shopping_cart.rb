require_relative "multi_class_programs.rb"

class Shoppingcart


  def initialize
    @name = name
    @products = []
    @sub_total = 0
    @total_price = 0
  end


  #----READERS----
  def products
    @products
  end

  def name
    @name
  end

  #----WRITERS----
  def name= name
      @name = name
  end

  #----INSTANCE----
  def add_to_cart(product)
    @products << product
    @sub_total += product.base_price
    @total_price += product.total_price
    puts " you added to the cart man"
  end

  def remove_from_cart(product)
    @products.delet(product)
    puts "you removed from your cart man"
  end

   def total_net
     @sub_total
   end

    def total_cost
      @total_price
    end

end
my_shoppingcart = Shoppingcart.new

garlic = Product.new("garlic", 5.55, 0.14)
milk = Product.new("milk", 10, 0.15)

puts milk.inspect

my_shoppingcart.add_to_cart(garlic)
my_shoppingcart.add_to_cart(garlic)

puts my_shoppingcart.inspect
