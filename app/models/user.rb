class User < ApplicationRecord
    validates :email, :password_digest, presence: true, uniqueness: true
    # invoke bcrypt method to require and hash passwords when adding new users
    has_secure_password

    has_and_belongs_to_many :cards
end
