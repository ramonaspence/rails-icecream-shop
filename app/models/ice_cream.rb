class IceCream < ApplicationRecord
    validates :name, presence: true, 
    length: { minimum: 10 }
    validates :description, presence: true,
    length: { minimum: 25 }
    validates :date_made, presence: true
end
