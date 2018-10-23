class FoodsController < ApplicationController
  def index
    @fridge = Fridge.find(params[:fridge_id])
    @foods = @fridge.foods
  end

  def show
    @food = Food.find(params[:id])
    @fridge = @food.fridge
  end

  def new
    @food = Food.new
  end

  def create
    @fridge = Fridge.find(params[:fridge_id])
    @fridge.foods.create(food_params)
    redirect_to "/fridges/#{@fridge.id}/foods"
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private

  def food_params
    params.require(:food).permit(:name, :pounds, :vegan, :timestamp)
  end

end
