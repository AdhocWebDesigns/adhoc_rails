class Weapon < ApplicationRecord
  belongs_to :user
  belongs_to :d_type
  belongs_to :w_prop
end
