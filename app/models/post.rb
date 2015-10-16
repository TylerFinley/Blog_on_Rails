class Post < ActiveRecord::Base
  has_many :details

  validates :name, :presence => true
end
