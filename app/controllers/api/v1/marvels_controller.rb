module Api
	module V1
		class MarvelsController < ApplicationController
			def index
				 # binding.pry
				render json: { data: Index.new.call }
			end

			def show
				id = params[:id]
				# binding.pry
				render json: {data: Show.new.call(id)}
			end
		end
	end
end
