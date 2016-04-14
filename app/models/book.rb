class Book < ActiveRecord::Base
  has_many :reservations
  belongs_to :author
  accepts_nested_attributes_for :author
end
