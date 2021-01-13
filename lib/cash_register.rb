class CashRegister
    
    attr_accessor :total, :discount, :items
    def initialize(emp_discount=nil)
        @total= 0
        @discount= emp_discount
        @items= []
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity
        quantity.times{self.items << title}
        @price= price
        @quantity= quantity
    end

    def apply_discount
        if self.discount != nil
            self.total -= self.total * self.discount/100
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= @price * @quantity
    end

end
