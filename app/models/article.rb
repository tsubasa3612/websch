class Article < ApplicationRecord
	has_many :comments
	validates :title, presence: true
	validates :price, presence: true
	validates :evaluation, presence: true
end
