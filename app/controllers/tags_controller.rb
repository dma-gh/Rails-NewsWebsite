class TagsController < ApplicationController
	def index
		@all_tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end
end
