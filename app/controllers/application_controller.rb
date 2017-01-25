class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :get_newsfeed_data

  private
  def get_newsfeed_data
  	@feed = Article.all.last(9)
  end
end
