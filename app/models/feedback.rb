class Feedback < ApplicationRecord
  validates_presence_of :rating, :comment
  belongs_to :product
end
