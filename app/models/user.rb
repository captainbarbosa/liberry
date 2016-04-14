class User < ActiveRecord::Base
  belongs_to :reservation
  has_many :reservations
end
