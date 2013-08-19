class TimeEntry < ActiveRecord::Base
  validates :hours, numericality: { greater_than: 0.5, less_than: 24 }
  validates :date, presence: true
  belongs_to :project
  belongs_to :user
end
