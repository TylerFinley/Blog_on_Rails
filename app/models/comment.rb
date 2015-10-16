class Comment < ActiveRecord::Base
  belongs_to :details

  validates :description, :presence => true
end
