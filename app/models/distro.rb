class Distro < ApplicationRecord
  belongs_to :package
  has_one_attached :logo
end
