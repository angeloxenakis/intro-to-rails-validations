class User < ApplicationRecord
    has_many :tickets
    has_many :movies, through: :tickets

    validates :name, presence: true

    
end
