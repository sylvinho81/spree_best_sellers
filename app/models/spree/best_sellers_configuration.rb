class Spree::BestSellersConfiguration < Spree::Preferences::Configuration

  preference :show_best_sellers, :boolean, :default => false
  preference :max_best_sellers, :string, :default => 2
  preference :show_best_sellers_sidebar, :boolean, :default => false
end
