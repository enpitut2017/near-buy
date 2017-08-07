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

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else

    end
  end

  def search
    name = params[:name]
    @items = Item.search_by_name(name)
  end

  private

  def shop_params
    params.require(:shop).permit(:lat, :lng)
  end

  def item_params
    params.require(:item).permit(:name, :price, :manufacturer)
  end

  def search_params
    params.require(:item).permit(:name)
  end
end
