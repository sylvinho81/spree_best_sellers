Spree::StoreController.class_eval do

  private

  def load_best_sellers
    config = Spree::BestSellersConfiguration.new
    if ((config.has_preference?(:show_best_sellers) && config[:show_best_sellers]) || (config.has_preference?(:show_best_sellers_sidebar) && config[:show_best_sellers_sidebar]))
      @best_sellers = Spree::Product.best_sellers
    end
  end

end