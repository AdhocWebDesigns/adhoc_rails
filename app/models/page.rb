class Page < ApplicationRecord
  belongs_to :author
  belongs_to :images
  belongs_to :parents
  belongs_to :children
end
