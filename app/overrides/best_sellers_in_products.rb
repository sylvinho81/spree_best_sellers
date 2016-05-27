Deface::Override.new(
  virtual_path: 'spree/home/index',
  name: 'products_in_main_content',
  insert_bottom: "[data-hook='homepage_products']",
  partial: 'spree/products/best_sellers_main_content'
)
