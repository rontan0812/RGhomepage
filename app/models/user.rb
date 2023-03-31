class User < ApplicationRecord
    validates :name,:email,:password,:check_password,presence: true
    validates :email, uniqueness: true
end
