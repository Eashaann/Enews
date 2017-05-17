class Article < ApplicationRecord
	def self.get_featured_article
		Article.where(featured_articles: true)		
	end

	def self.search(search_term)
	  Article.where("name LIKE ?", "%#{search_term}%")
	end
		
end
