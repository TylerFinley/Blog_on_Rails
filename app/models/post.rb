class Post < ActiveRecord::Base
  has_many :details
  belongs_to :user

  validates :name, :presence => true
  validates :user, :presence => true
end
