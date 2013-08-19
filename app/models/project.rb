class Project < ActiveRecord::Base
  validates :name, uniqueness: true, length: { in: 2..30 }
  has_many :time_entries
end
