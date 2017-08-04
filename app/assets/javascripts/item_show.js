const replaceStockString = () => {
  const $shopInfo = $("#shopInfo");
  const shopInfoString = $shopInfo.html();
  const replacedShopInfoString = shopInfoString.replace(/full/g, "○").replace(/few/g, "△").replace(/out_of/g, "×");
  $shopInfo.html(replacedShopInfoString);
}