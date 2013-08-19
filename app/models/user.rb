class User < ActiveRecord::Base
  rolify
  has_many :time_entries
  validates :name, uniqueness: { case_sensitive: false }, presence: true, length: { minimum: 2 }
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
