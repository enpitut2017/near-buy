class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def sorted_shops
    lat = params[:lat]
    lng = params[:lng]
    @id = params[:id]
    @shops = Shop.distance(lat, lng)
  end

  private

  def shop_params
    params.require(:shop).permit(:lat, :lng)
  end
end
