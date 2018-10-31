class Profile < ApplicationRecord
  belongs_to :user
  has_one :profile
  belongs_to :dnd_class
  belongs_to :alignment
  belongs_to :race

 has_one :stats
 
  has_many :skills
  has_one :faction
  has_many :spells
  has_many :attacks
  has_one :inventory
  has_many :langs
  has_one :treasure
  has_one :purse
  has_one :photo
end
