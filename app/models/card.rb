class Card < ApplicationRecord
    validates :name, :phone, :email, presence: true
    belongs_to :user
end
