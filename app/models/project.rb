class Project < ActiveRecord::Base
  validates :name, uniqueness: true, length: { in: 2..40 }
  has_many :time_entries
end
