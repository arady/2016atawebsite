class MembersController < ApplicationController
	layout 'member'
	def index
		@member = Member.all
	end

	def new

	end

	def create 
		@member = Member.new(post_params)
		@member.save

		redirect_to @member
	end

	def show
		@member = Member.find(params[:id])
	end

	private
		def post_params
			params.require(:member).permit(:title, :video, :description, :web_title, :meta_description)
		end
end
