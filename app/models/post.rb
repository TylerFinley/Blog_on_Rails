class Genre < ActiveRecord::Base
  has_many :details

  validates :name, :presence => true
end
