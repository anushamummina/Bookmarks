class Bookmark < ApplicationRecord
	belongs_to :category

	validates :title, presence: true
	validates :host, presence: true
	validates :url, presence: true, uniqueness: true, format: {with: /https?:\/\/[\S]+/}

	validates :category, presence: true
end
