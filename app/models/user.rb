class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :boards
  has_many :lists
  has_many :card_memberships
  has_many :cards, through: :card_memberships
  has_many :activities
end
