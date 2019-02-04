class InstallDistroInfo < ApplicationRecord
  belongs_to :people
  belongs_to :trouble
  belongs_to :distro
end
