# class representing product purchased
# class representing shopping cart
#shoppingcart hold collections of product to buy
# each product(name, base price, tax rate)
# each instance of shoppingcart
      # add/remove product to shoppingcart
      # add total cost of all products in cart before/after tax

class Product

 def initialize(name, base_price, tax_rate)
   @name = name
   @base_price = base_price
   @tax_rate = tax_rate
 end

 #----READERS----
  def name
    @name
  end

  def base_price
    @base_price
  end

  def tax_rate
    @tax_rate
  end

 #----WRITERS----
 def base_price=(base_price)
   @base_price = base_price
 end

 def tax_rate=(tax_rate)
   @tax_rate = tax_rate
 end
 #----INSTANCE----
 def total_price
   self.base_price * (1 + self.tax_rate)
 end

end
