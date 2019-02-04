class Person < ApplicationRecord
  belongs_to :location
  belongs_to :event
  belongs_to :gender
end
