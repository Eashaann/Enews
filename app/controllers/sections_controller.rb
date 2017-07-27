class SectionsController < ApplicationController
  def world
  	@world = Article.where("category =?", "world").order(created_at: :desc)
  	@featured = Article.where(featured_articles: true).order(created_at: :desc)    
  end

  def health
  	@health = Article.where("category =?", "health").order(created_at: :desc)
  	@featured = Article.where(featured_articles: true).order(created_at: :desc)    
  end

  def sports
  	@sports = Article.where("category =?", "sports").order(created_at: :desc)
  	@featured = Article.where(featured_articles: true).order(created_at: :desc)    
  end

  def business
    @business = Article.where("category =?", "business").order(created_at: :desc)
    @featured = Article.where(featured_articles: true).order(created_at: :desc)   
  end

  def tech
    @tech = Article.where("category =?", "tech").order(created_at: :desc)
    @featured = Article.where(featured_articles: true).order(created_at: :desc)   
  end

  def contact
    @featured = Article.where(featured_articles: true).order(created_at: :desc)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

end
