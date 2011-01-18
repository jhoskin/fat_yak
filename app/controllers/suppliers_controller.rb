class SuppliersController < ApplicationController

	NEW_TITLE = "Add a new Supplier"
  
	def new
		@title = NEW_TITLE
		@supplier = Supplier.new
	end

	def show
	end

	def index
		@title = "List of suppliers"
		@suppliers = Supplier.all
	end

	def edit
		@title = "Edit supplier"
		@supplier = Supplier.find_by_id(params[:id])
	end

	def create
		@supplier = Supplier.new(params[:supplier])
		if @supplier.save
			redirect_to suppliers_path
		else
			@title = NEW_TITLE
			render "new"
		end		
	end

	def destroy
	end

	def update
		@supplier = Supplier.find(params[:id])
		if @supplier.update_attributes(params[:supplier])
			redirect_to suppliers_path
		else
			@title = "Edit supplier"
			render "edit"
		end
	end

end
