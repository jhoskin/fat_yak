class OrdersController < ApplicationController
  def new
    @ingredients = Ingredient.all
    @units = MeasurementUnit.all
    @suppliers = Supplier.all
    @order = Order.new
    @order.ingredient_batches << IngredientBatch.new
    @title = "New order"
  end

  def edit
  end

  def index
  end

  def destroy
  end

  def create
    @order = Order.new(params[:order])
    @order.quantity_in_stock = @order.quantity_delivered
    @order.quantity_in_stock_unit = @order.quantity_delivered_unit

    if @order.save
      redirect_to edit_path, :id => @order.id
    else
      @title = "New order"
      render "new"
    end

  end

  def update
  end

end
