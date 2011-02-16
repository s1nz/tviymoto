class Motorcycle < ActiveRecord::Base
    
    scope :low_cost, where("price < ?", 20000)
    scope :search, lambda {|query| where(["model LIKE ?", "%#{query}%"])}
    
end
