class Review < ActiveRecord::Base
	belongs_to :product
	belongs_to :user

	validates :rating, presence: true
	validates :product_id, presence: true
	validates :description, presence: true
	validates :user_id, presence: true
end
