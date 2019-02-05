class Location < ApplicationRecord
  belongs_to :city
  has_many_attached :images
end
