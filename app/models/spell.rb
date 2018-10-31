class Spell < ApplicationRecord
  belongs_to :spell_school
  has_one :dnd_class
  has_one :damage_effect
  has_many :spell_components
end
