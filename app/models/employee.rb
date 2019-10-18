class Employee < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :attend_mode_id, presence: true
  validates :password, presence: true, length: { minimum: 8 ,maximum: 32 }, format: /\A(?=.*?[a-z])(?=.*?\d)[a-zA-Z\d]{8,32}+\z/
  
  has_secure_password
end
