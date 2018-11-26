class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one :profile

  validates :nickname, format: { with: /\A[a-zA-Z]+\z/,
    		message: "only allows letters" }
validates :nickname, :age, :avatar, presence: true
validates :age, inclusion: { in: 18..65,
    message: "%{value} is not a valid age" }
end
