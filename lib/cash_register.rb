class CashRegister 
  attr_accessor :discount 
  
  def initialize(discount = 0)  
   @total = 0 
   @discount = discount 
   
  end   
  
  #def new 
  
  #end   
  
 def total=(number)
   @total=number
   
   
    #cash_register.total = 100
 end 
  
  def total 
  @total
  end 
  
  def add_item(title, price, quantity=1)
    @total += price * quantity
    
 end
 
 def apply_discount(item, price)
   # applies the discount to the total price 
   
   
 end
end   



