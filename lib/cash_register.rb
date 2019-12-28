class CashRegister 

  attr_accessor :discount 

  #attr_accessor :cashregister
  
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
   
   discount != 0 
   
  self.total = (total * ((100.0 - discount.to_f)/100)).to_i

 end
 
 def items
 end 
 
 
end   




