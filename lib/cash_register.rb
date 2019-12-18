
class CashRegister
  
  attr_accessor :discount, :total, :items
  attr_reader
  
    def void_last_transaction
      @total = @total - @item_total
    end
  def items
   @items
  end
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @item_total = 0.0
  end
  def total
    @total
  end
  
  def add_item(item, price, quantity = 1)
    @item_total = price.to_f * quantity
    quantity.times {@items << item}
    @total = @total + @item_total
    @total
end

  def apply_discount
    
    discounted_price = 0.00
    current_total= @total
    disc = @discount / 100.00
    discounted_price = current_total - current_total * disc
    formatted = discounted_price.to_int
    @total = formatted
    return "There is no discount to apply." unless @discount > 0
        if @discount > 0
    p  "After the discount, the total comes to $#{formatted}."
  end
  end 
end