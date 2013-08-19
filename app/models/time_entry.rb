class TimeEntry < ActiveRecord::Base
  validates :hours, numericality: true
  validates :date, presence: true
  belongs_to :project
  belongs_to :user
end
