class CashRegister
  
  attr_accessor :discount, :total, :list, :last_transaction
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @list = []
  end
  
  def total 
     @total 
  end
  
  def discount
    @discount = 20
  end
    
  def add_item (item, price, quantity = 1)
    quantity.times {@list << item}
    @total += (price.to_f * quantity.to_f)
    @last_transaction = (price * quantity)
  end



  def apply_discount
    if @discount > 0 
      discount = (@discount.to_f / 100)
      percentage = (@total.to_f * discount)
      @total = (@total.to_f - percentage)
     "After the discount, the total comes to $#{@total.to_i}."
    else 
     "There is no discount to apply."
    end
  end
      
  def items
    @list 
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end

end
