class Profile < ApplicationRecord
  belongs_to :user
  has_one :stats
  has_one :purse
  has_one :inventory
  has_one :treasure
  has_one :photo
  has_many :skills
  has_many :spells
  has_many :attacks
  has_many :langs
end
