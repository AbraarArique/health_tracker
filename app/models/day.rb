class Day < ActiveRecord::Base
  has_many :meals, dependent: :destroy
  has_many :workouts, dependent: :destroy
  validates :day,
  presence: true
end
