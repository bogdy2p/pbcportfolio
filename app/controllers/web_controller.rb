class WebController < ApplicationController
	def index
	 	@apps = App.all
	 	@ora_actuala = Time.now
	 	@apps_web = []
	 	@apps.each do |app|
	 		@apps_web << app if app.category.to_s[0].downcase == "w"
	 	end
	end

	def show
		@app = App.find(params[:id])
	end
end
