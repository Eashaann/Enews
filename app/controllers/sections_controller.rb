class SectionsController < ApplicationController
  def world
  	@world = Article.where("category =?", "world")
  	@featured = Article.where(featured_articles: true)
  end

  def health
  	@health = Article.where("category =?", "health")
  	@featured = Article.where(featured_articles: true)
  end

  def sports
  	@sports = Article.where("category =?", "sports")
  	@featured = Article.where(featured_articles: true)
  end

  def business
    @business = Article.where("category =?", "business")
    @featured = Article.where(featured_articles: true)
  end

   def tech
    @tech = Article.where("category =?", "tech")
    @featured = Article.where(featured_articles: true)
  end

   def contact_us
    
    @featured = Article.where(featured_articles: true)
  end
end
