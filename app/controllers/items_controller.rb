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
    @item = Item.find(@id)
    if @item.shops.distance(lat, lng).present?
      @shops = @item.shops.distance(lat, lng)
    else
      @shops = @item.shops.all
    end
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

  def search
    @name = search_params[:name]
    @items = Item.search_by_name(@name)
  end

  private

  def shop_params
    params.require(:shop).permit(:lat, :lng)
  end

  def item_params
    params.require(:item).permit(:name, :price, :manufacturer)
  end

  def search_params
    params.permit(:name)
  end
end
