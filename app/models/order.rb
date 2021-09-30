class Order < ActiveRecord::Base 
    belongs_to :customer
    belongs_to :barista

    def self.busiest_barista
        barista_orders = all.pluck(:barista_id)
        Barista.find(barista_orders.max_by{|barista| barista_orders.count(barista)}).name
    end  
    
    def self.best_customer
        hash= Hash.new(0)
        self.all.map do |order|
            if hash[order.customer_id] == hash[order.customer_id]
                hash[order.customer_id] += order.quantity
            else
                hash[order.customer_id] += order.quantity
            end
    end
    Customer.find(hash.key(hash.values.max)).name
    end
    
    def print_details
        "#{customer.name} ordered #{quantity} of #{drink} from #{barista.name}."
    end    
end