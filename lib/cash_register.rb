require 'pry'
class CashRegister
   attr_accessor :discount, :total, :items, :prices

   def initialize(discount = 0)
     @total = 0
     @discount = discount
     @items = []
     @prices = []
   end

   def total
      return @total
   end

   def add_item(item, price, quantity = 1)
     self.total += price * quantity

     quantity.times do
      @items << item
     end

     quantity.times do
       @prices << price
     end
  end

   def apply_discount
     if @discount == 0
       return"There is no discount to apply."
     else
       @total = @total - @total / 100 * discount
       return "After the discount, the total comes to $#{@total}."
     end
   end

   def items
      return @items
   end

   def void_last_transaction
  #   binding.pry
     if @total == 0
       return @total
     else
       @total -= @prices.last
     end
   end


end
