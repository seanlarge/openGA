class Challenge < ActiveRecord::Base
  has_many :comments
  has_many :innovators_challenge
  has_many :innovators, through: :innovators_challenge
end
