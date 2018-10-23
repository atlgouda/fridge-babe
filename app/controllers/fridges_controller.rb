class FridgesController < ApplicationController
  def index
    @fridges = Fridge.all
  end

  def show
    @fridge = Fridge.find(params[:id])
  end

  def new
    @fridge = Fridge.new
  end

  def create
    @fridge = Fridge.create!(fridge_params)
    redirect_to "/fridges/#{@fridge.id}"
  end

  def edit
    @fridge = Fridge.find(params[:id])
  end

  def update
    @fridge = Fridge.find(params[:id])
    @fridge.update(fridge_params)
    redirect_to "/fridges"

end

  def destroy
    @fridge = Fridge.find(params[:id])
    @fridge.destroy
    redirect_to "/fridges"
end

private

def fridge_params
  params.require(:fridge).permit(:location, :brand, :size)
end
end
