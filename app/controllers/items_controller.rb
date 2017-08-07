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
      flash.now[:success] = "登録完了"
      redirect_to @item
    else
      render 'new'
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
