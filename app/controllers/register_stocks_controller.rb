class RegisterStocksController < ApplicationController
  def edit
    @item_shop = ItemShop.find_by(item_id: params[:item_id], shop_id: params[:shop_id])
    unless @item_shop
      # itemとshopのリレーションが見つからないとき
      render 'edit'
    end
  end
  
  def update
    @item_shop = ItemShop.find_by(item_id: params[:item_id], shop_id: params[:shop_id])
    if @item_shop
      # 見つかったとき（最初に見つかった組）
      if @item_shop.update_attributes(item_shop_params)
        # 更新に成功した時
        redirect_to controller: 'items', action: 'show', id: @item_shop.item_id
      else
        # 更新に失敗したとき
        render 'edit'
      end
    else
      # itemとshopのリレーションが見つからないとき
      render 'edit'
    end
  end
  
  private
  
  def item_shop_params
    params.require(:item_shop).permit(:stock)
  end
end
