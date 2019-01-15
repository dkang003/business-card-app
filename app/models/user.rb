class User < ApplicationRecord
    validates :email, :password_digest, presence: true, uniqueness: true
    # invoke bcrypt method to require and hash passwords when adding new users
    has_secure_password

    has_many :cards, dependent: :destroy
end
