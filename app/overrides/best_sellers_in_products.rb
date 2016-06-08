Deface::Override.new(
    virtual_path: 'spree/shared/_products',
    name: 'add_best_sellers_products_to_products_index',
    insert_bottom: "#products[data-hook], [data-hook='products']",
    partial: 'spree/products/best_sellers_main_content'
)

Deface::Override.new(
    virtual_path: 'spree/products/show',
    name: 'add_best_sellers_products_to_products_show',
    insert_bottom: "#product_description[data-hook], [data-hook='product_description']",
    partial: 'spree/products/best_sellers_main_content'
)