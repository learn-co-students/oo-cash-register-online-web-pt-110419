class CashRegister 

#   attr_accessor :discount 

#   #attr_accessor :cashregister
  
#   def initialize(discount = 0)  
#   @total = 0 
#   @discount = discount 

#   end   
  
#   #def new 
  
#   #end   
  
# def total=(number)
#   @total=number
   
   
#     #cash_register.total = 100
# end 
  
#   def total 
#   @total
#   end 
  
#   def add_item(title, price, quantity=1)
#     @total += price * quantity
    
# end
 
# def apply_discount
#   # applies the discount to the total price 
   
#   if discount != 0 
   
#   self.total = (total * ((100.0 - discount.to_f)/100)).to_i
#   "After the discount, the total comes to $#{self.total}."
# else 
#   "There is no discount to apply."

# end
# end 
 
# def items
#   #returns an array containing all items that have been added
  
#   add_item
# end 
 
# #def void_last_transaction
#     # self.total = self.total - self.last_transaction 


# #end 

 
# end   


 attr_accessor :total, :discount, :items, :last_transaction_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    quantity.times do
      items << title
    end
    @last_transaction_amount = price * quantity

    # if quantity > 1
    #   i = 0
    #   while i < quantity
    #     @items << title
    #     i += 1
    #   end
    # else
    #   @items << title
    # end
    end

    def apply_discount
      if @discount > 0
        @discount = @discount/100.to_f
        # binding.pry
        @total = @total - (@total * (@discount))
         "After the discount, the total comes to $#{@total.to_i}."
    else
        "There is no discount to apply."
      end
    end

    def void_last_transaction
      @total = @total - @last_transaction_amount
    end
end




