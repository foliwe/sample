class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         before_save { email.downcase! } 
         validates :full_name ,presence: true, length: {minimum:5, maximum:50}
end
