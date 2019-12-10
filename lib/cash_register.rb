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


class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
