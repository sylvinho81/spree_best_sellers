Deface::Override.new(
  virtual_path: 'spree/home/index',
  name: 'add_best_sellers_products_to_sidebar_home',
  insert_bottom: "[data-hook='homepage_sidebar_navigation']",
  partial: 'spree/products/best_sellers_content_sidebar'
)

Deface::Override.new(
    virtual_path: 'spree/shared/_products',
    name: 'add_best_sellers_products_to_sidebar_products_index',
    insert_bottom: "[data-hook='homepage_sidebar_navigation']",
    partial: 'spree/products/best_sellers_content_sidebar'
)

Deface::Override.new(
    virtual_path: 'spree/products/show',
    name: 'add_best_sellers_products_to_sidebar_products_show',
    insert_bottom: "[data-hook='homepage_sidebar_navigation']",
    partial: 'spree/products/best_sellers_content_sidebar'
)