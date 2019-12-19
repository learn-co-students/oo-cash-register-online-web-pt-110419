class CashRegister
  (:cash_register){CashRegister.new}
  (:cash_register_with_discount) { CashRegister.new(20) }
end

def cash_register  
  cash_register.new(:@total)
  cash_register.new = 0 
end

def cash_register_with_discount
  cash_register_with_discount.to(:@employee_discount)
  expect(cash_register_with_discount.discount).to eq(20)
  end
end

def total
  cash_register.total = 100
  expect(cash_register.total).to eq(100)
  end
end

def add_item
  expect{cash_register.add_item("eggs", 0.98)}.to change{cash_register.total}.by(0.98)
end

expect{cash_register.add_item("book", 5.00, 3)}.to change{cash_register.total}.by(15.00)
end

cash_register.add_item("Lucky Charms", 4.5)
      expect(cash_register.total).to eq(4.5)
      cash_register.add_item("Ritz Crackers", 5.0)
      expect(cash_register.total).to eq(9.5)
      cash_register.add_item("Justin's Peanut Butter Cups", 2.50, 2)
      expect(cash_register.total).to eq(14.5)
    end
  end
  
   cash_register_with_discount.add_item("macbook air", 1000)
        cash_register_with_discount.apply_discount
        expect(cash_register_with_discount.total).to eq(800)
      end
      
      cash_register_with_discount.add_item("macbook air", 1000)
        expect(cash_register_with_discount.apply_discount).to
      end
      
      
      
