class Customer < ActiveRecord::Base 
    has_many :orders  
    has_many :baristas, through: :orders
    
    def total_spent
        all_orders = Order.where(customer_id:self.id)

        total = 0

        all_orders.map do |order|
            sum= order.price * order.quantity
            total += sum
            end
        return total
    end

    def total_orders
        orders.length
    end

    def refund
        orders.last.destroy
    end 

    def favorite_drink
        orders.max_by{|m| m.quantity}.drink
    end 
end