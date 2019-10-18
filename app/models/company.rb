class Company < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
    validates :address, presence: true
    validates :phone_number, presence: true
    validates :employee_number, presence: true
    validates :password, presence: true, length: { minimum: 8 ,maximum: 32 }
    has_secure_password
end
