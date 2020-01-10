require 'pry'
# class CashRegister
#   attr_accessor :total, :discount, :last_transaction_amount, :price, :items

#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @items = []
#     @last_transaction_amount = 0
#   end

#   def add_item(item, price, quantity = 1)
#     @price = price
#     @total += price * quantity
#     @last_transaction_amount = price * quantity
#     if quantity > 1
#       counter = 0
#       while counter < quantity
#         @items << item
#         counter += 1
#       end
#     else
#       @items << item
#     end
#   end

#   def apply_discount
#     if @discount > 0
#       @to_take_off = (price * discount)/100
#       @total -= @to_take_off
#       return "After the discount, the total comes to $#{total}."
#     else
#       return "There is no discount to apply."
#     end
#   end
# #binding.pry
#   def void_last_transaction()
#     @total -= @last_transaction_amount
#   end

# end
class CashRegister

  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @price = 0
  end


  def add_item(item,price,quantity = 1)
    if quantity > 1
      i=0
      while i< quantity
        @items << item
        i += 1
      end
    else
      @items << item
    end
    @total += price*quantity
    @price = price * quantity
  end
  
  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end


  def void_last_transaction()
    @total -= @price
  end

end