class CommentsController < ApplicationController

	def create
		@comment = Comment.create(params[:comment])

		respond_to do |format|
			format.js
		end
	end

end