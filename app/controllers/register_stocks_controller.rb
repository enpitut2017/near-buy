class RegisterStocksController < ApplicationController
  def new
    if Item.find_by(id: params[:item_id]).present? && Shop.find_by(id: params[:shop_id]).present?
      @item_shop = ItemShop.find_by(item_id: params[:item_id], shop_id: params[:shop_id])
      if @item_shop
        # itemとshopのリレーションがすでにあるとき
        flash.now[:danger] = "お探しのページは見つかりません"
        redirect_to root_url
      else
        render 'new'
      end
    else
      # 対応するItemかShopが存在しないとき
      flash.now[:danger] = "お探しのページは見つかりません"
      redirect_to root_url
    end
  end
  
  def create
    if register_stocks(:create)
      # 登録に成功したとき
      flash.now[:success] = "在庫を登録しました"
      redirect_to controller: 'items', action: 'show', id: @item_shop.item_id
    else
      # 登録に失敗したとき
      flash.now[:danger] = "在庫を登録できませんでした"
      render 'new'
    end
  end
  
  def edit
    @item_shop = ItemShop.find_by(item_id: params[:item_id], shop_id: params[:shop_id])
    if @item_shop
      render 'edit'
    else
      # itemとshopのリレーションが見つからないとき
      flash.now[:danger] = "お探しのページは見つかりません"
      redirect_to root_url
    end
  end
  
  def update
    if register_stocks(:update) && @item_shop.present?
      # 更新に成功した時
      flash.now[:success] = "在庫を更新しました"
      redirect_to controller: 'items', action: 'show', id: @item_shop.item_id
    else
      # 更新に失敗したとき
      flash.now[:danger] = "在庫を更新できませんでした"
      render 'edit'
    end
  end
  
  private
  
  def register_stocks(action)
    case action
    when :create
      @item_shop = ItemShop.new(item_id: params[:item_id], shop_id: params[:shop_id], stock: params[:stock])
      return @item_shop.save
    when :update
      @item_shop = ItemShop.find_by(item_id: params[:item_id], shop_id: params[:shop_id])
      return @item_shop && @item_shop.update_attributes(item_shop_params)
    else
      @item_shop = ItemShop.find_by(item_id: params[:item_id], shop_id: params[:shop_id])
      return @item_shop
    end
  end
  
  def item_shop_params
    params.permit(:stock)
  end
end
