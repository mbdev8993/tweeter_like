class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :followers, class_name: "User",
                          foreign_key: "following_id"
 
  belongs_to :following, class_name: "User", optional: true
  has_many :tweets  
end
