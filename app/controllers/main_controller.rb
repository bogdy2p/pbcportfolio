class MainController < ApplicationController
	def index
		@apps = App.all
		@ora_actuala = Time.now
		#@categories = Category.all
	end
end
