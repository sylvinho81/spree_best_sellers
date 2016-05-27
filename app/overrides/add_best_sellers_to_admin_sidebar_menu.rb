Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'best_sellers_admin_sidebar_menu',
  insert_bottom: '#main-sidebar',
  partial: 'spree/admin/shared/best_sellers_sidebar_menu'
)
