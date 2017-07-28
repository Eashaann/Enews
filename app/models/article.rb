class Article < ApplicationRecord
	has_many :comments
	belongs_to :user

	def self.get_featured_article
		Article.where(featured_articles: true).order(created_at: :desc)		
	end

	def self.search(search_term)
	  if Rails.env.production?
  		Article.where("name ilike ?", "%#{search_term}%")
  	else
  		Article.where("name LIKE ?", "%#{search_term}%")
  	end 
	end

end
