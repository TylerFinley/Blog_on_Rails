class Detail < ActiveRecord::Base
  belongs_to :post
  has_many :comments

  validates :name, :presence => true
  # validates :comment, :presence => true

  default_scope {order("name")}

end
