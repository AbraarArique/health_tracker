class Workout < ActiveRecord::Base
  belongs_to :day
  validates :name, :cal, :day_id,
  presence: true
end
