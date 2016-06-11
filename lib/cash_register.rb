class CashRegister

attr_accessor :total, :discount, :title, :quantity, :price

  

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @all = []
  end



  def add_item(title, price, quantity=1)
    @total += price*quantity
    @title = title
    @price = price
    @quantity = quantity
    i = 0
    for i in 1..quantity
      @all << title
      i+1
    end
  end

  def apply_discount
    @total = (@total*(1-@discount.fdiv(100))).round
    if 
      discount != 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @all 
  end

  def void_last_transaction
    @total = @total - @price*quantity
  end







# Add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction


end