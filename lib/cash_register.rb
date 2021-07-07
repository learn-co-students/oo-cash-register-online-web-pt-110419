# class CashRegister
#
# attr_accessor :discount, :total
#
#   def initialize(discount = 0)
#     # @total doesn't need to be accessed outside the object so no getter method is necessary
#     @total = 0
#     # according to the test "expect(cash_register_with_discount.discount)" discount method needs to be accessed outside of the object so a getter method is needed
#     @discount = discount
#   end
#
#   def add_item(title, price)
#
#   end
#
# end

require 'pry'
class CashRegister


  attr_accessor :discount, :total
# how to set an optional argument?
# the discount argument needs to be returned how? with an attr_accessor
def initialize(discount = 20)
  @total = 0
  @discount = discount
end

def add_item(title, price)
  @total = @total + price
  # @total has to be altered to retain it for the remainder of the lab. A new variable wouldn't work because it only exists within the scope of the method it is in not for the entire class
  # @total
  # binding.pry
end














#   attr_accessor :items, :discount, :total, :last_transaction
#
#   def initialize(discount=0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end
#
#   def add_item(title, amount, quantity=1)
#     self.total += amount * quantity
#     quantity.times do
#       items << title
#     end
#     self.last_transaction = amount * quantity
#   end
#
#   def apply_discount
#     if discount != 0
#       self.total = (total * ((100.0 - discount.to_f)/100)).to_i
#       "After the discount, the total comes to $#{self.total}."
#     else
#       "There is no discount to apply."
#     end
#   end
#
#   def void_last_transaction
#     self.total = self.total - self.last_transaction
#   end
end
