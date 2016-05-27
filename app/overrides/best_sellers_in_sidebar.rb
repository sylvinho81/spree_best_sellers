Deface::Override.new(
  virtual_path: 'spree/home/index',
  name: 'best_sellers_in_sidebar',
  insert_bottom: "[data-hook='homepage_sidebar_navigation']",
  partial: 'spree/products/best_sellers_content_sidebar'
)
