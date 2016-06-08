Spree::Product.class_eval do




  def self.best_sellers
    config = Spree::BestSellersConfiguration.new
    num_max_best_sellers = config[:max_best_sellers] || 2


    results = Spree::Product.active.select("spree_products.*, SUM(spree_line_items.quantity) as total_qty, spree_line_items.variant_id").
        joins(:line_items).joins("INNER JOIN spree_orders ON spree_orders.id = spree_line_items.order_id").
        where("spree_orders.state = 'complete'").
        group("spree_line_items.variant_id, spree_products.id")

    unless Spree::Config.show_products_without_price
      results = results.where("spree_prices.amount IS NOT NULL").where("spree_prices.currency" => Spree::Config[:currency])
    end

    results = results.order("total_qty DESC").limit(num_max_best_sellers)

    return results
  end


end