class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true
  validates :age, presence: true
  
  has_many :movies
  has_many :actors
  has_many :directors
  has_many :comments, dependent: :destroy
end
