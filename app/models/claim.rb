class Claim < ApplicationRecord
    validates :email,:content,presence: true
end
