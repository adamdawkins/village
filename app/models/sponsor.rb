class Sponsor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :sponsorship
  has_one :child, through: :sponsorship
  has_many :posts, as: :authorable
  has_one :bank_detail
end
