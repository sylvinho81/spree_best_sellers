Spree::ProductsController.class_eval do

  before_action :load_best_sellers, only: [:index]








end