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
    item = Item.find_by(id: params[:id])
    if item.shops.distance(lat, lng).present?
      @shops = item.shops.distance(lat, lng)
    else
      @shops = item.shops.all
    end
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

  private

  def shop_params
    params.require(:shop).permit(:lat, :lng)
  end

  def item_params
    params.require(:item).permit(:name, :price, :manufacturer)
  end

end
