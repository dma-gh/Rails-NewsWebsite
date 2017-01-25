class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :get_newsfeed_data

  private
  def get_newsfeed_data
  	@featured = Article.all.order("created_at DESC").where(featured: true).first(1)
  	@feed = Article.all.order("created_at DESC").where(featured: [false, nil]).first(9)
  end
end
