class Barista < ActiveRecord::Base 
    has_many :orders
    has_many :customers, through: :orders
    
    def drinks_made
        orders.pluck(:quantity).reduce(:+)
    end
    
    def customer_list
        customers.pluck(:name)
    end 
    
    def self.unique_customers
        all.map {|s| s.customers.pluck(:name)}.flatten.uniq
    end   
end