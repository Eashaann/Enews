class Article < ApplicationRecord
	def self.get_featured_article
		Article.where(featured_articles: true)		
	end
end
