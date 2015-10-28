class Market < ActiveRecord::Base

has_many :shopping_sessions
validates :adress, presence: true
validates_uniqueness_of :adress


end
