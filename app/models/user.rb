class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  before_save { email.downcase! } 
  validates :full_name ,presence: true, length: {minimum:5, maximum:50}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
