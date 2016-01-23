class MembersController < ApplicationController
	layout 'member'
	def index
		@member = Member.all
	end

	def new
		@member = Member.new
	end

	def create 
		@member = Member.new(post_params)
		@member.save

		redirect_to @member
	end

	def show
		@member = Member.find(params[:id])
	end

	def edit
		@member = Member.find(params[:id])
	end

	def update
		@member = Member.find(params[:id])	

		if @member.update(params[:member].permit(:title, :video, :image, :description, :web_title, :meta_description))
			redirect_to @member
		else
			render 'edit'
		end
	end

	private
		def post_params
			params.require(:member).permit(:title, :video, :image, :description, :web_title, :meta_description)
		end
end
