class Person 
  
  attr_accessor :age 
  
  def initialize(age = 0)
  @age = age 
end 

def birthday 
  self.age += 1 
end 
end 

describe 'CashRegister' do
  let(:cash_register) { CashRegister.new }
  let(:cash_register_with_discount) { CashRegister.new(20) }
