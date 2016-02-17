class Product < ActiveRecord::Base
	belongs_to :category
	has_many :comment, as: :commentable
end
