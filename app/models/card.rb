class Card < ApplicationRecord
    validates :name, :phone, :email, presence: true
    has_and_belongs_to_many :users
end
