class AppsController < ApplicationController
	def index
	 	@apps = App.all
	 	@ora_actuala = Time.now
	end

	def show
		@app = App.find(params[:id])
	end

	def edit
		@app = App.find(params[:id])
	end

	def new
		@app = App.new
	end

	def create
		@app = App.new(app_params)

		if @app.save
			redirect_to apps_path, :notice => "aplicatie salvata cu success"
		else
			render "new"
		end
	end
	
	def update
		@app = App.find(params[:id])

		if @app.update_attributes(params.require(:app).permit(:title, :description, :category, :imagelink, :imagelink2, :imagelink3, :imagelink4, :imagelink5, :applicationlink, :applicationlink2))
			redirect_to apps_path, :notice => "Editarea a avut success."
		else
			render "edit"
		end
	end

	def destroy
		@app = App.find(params[:id])
		@app.destroy

		redirect_to apps_path , :notice => "Aplicatia a fost stearsa."
	end

	private
	def app_params
		params.require(:app).permit(:title, :description, :category, :imagelink, :imagelink2, :imagelink3, :imagelink4, :imagelink5, :applicationlink, :applicationlink)
	end
end
