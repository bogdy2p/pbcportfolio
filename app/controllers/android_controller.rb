class AndroidController < ApplicationController
	def index
	 	@apps = App.all
	 	@ora_actuala = Time.now
	 	@apps_android = []
	 	@apps.each do |app|
	 		@apps_android << app if app.category.to_s[0].downcase == "a"
	 	end
	end

	def show
		@app = App.find(params[:id])
	end
end
