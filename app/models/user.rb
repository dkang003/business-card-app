class User < ApplicationRecord
    # invoke bcrypt method to require and hash passwords when adding new users
    has_secure_password

    has_many :cards
end
