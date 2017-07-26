class Article < ApplicationRecord
	has_many :comments

	def self.get_featured_article
		Article.where(featured_articles: true)		
	end

	def self.search(search_term)
	  if Rails.env.production?
  		Article.where("name ilike ?", "%#{search_term}%")
  	else
  		Article.where("name LIKE ?", "%#{search_term}%")
  	end 
	end

end
