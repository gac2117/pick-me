class Api::TagsController < ApplicationController
	def index
		@tags = Tag.all 
		render json: @tags 
	end

	def show
		@tag = Tag.find(params[:id])
		render json: @tag 
	end

	def create
		@tag = Tag.new(tag_params)

		if @tag.save
			render json: @tag, status: :created
		else
			render json: @tag.errors, status: :unprocessable_entity
		end
	end

	def update
		if @tag.update(tag_params)
			render json: @tag
		else
			render json: @tag.errors, status: :unprocessable_entity
		end
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
	end

	private
		def tag_params
			params.require(:tag).permit(:name, :restaurant_id)
		end
end
