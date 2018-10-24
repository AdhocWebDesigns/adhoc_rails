class Page < ApplicationRecord
  belongs_to :user
  has_many :pages
  has_many_attached :images
end
