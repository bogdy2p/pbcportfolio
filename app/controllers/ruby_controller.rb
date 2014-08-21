class RubyController < ApplicationController
	def index
	 	@apps = App.all
		@ora_actuala = Time.now
	 	@apps_ruby = []
	 	@apps.each do |app|
	 		@apps_ruby << app if app.category.to_s[0].downcase == "r"
	 	end
	end

	def show
		@app = App.find(params[:id])
	end
end
