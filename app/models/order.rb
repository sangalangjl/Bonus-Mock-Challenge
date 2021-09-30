class Order < ActiveRecord::Base 
    belongs_to :customer
    belongs_to :barista

    def self.busiest_barista
        barista_orders = all.pluck(:barista_id)
        Barista.find(barista_orders.max_by{|barista| barista_orders.count(barista)}).name
    end  
    
    def self.best_customer #this is not corrent.  we didn't finish.
        all.max_by{|s| s.quantity}.barista.name
    end 
    
    def print_details
        "#{customer.name} ordered #{quantity} of #{drink} from #{barista.name}."
    end    
end