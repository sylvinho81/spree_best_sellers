module Spree
  module Admin
    class BestSellersSettingsController < Spree::Admin::BaseController
      def edit
        @config      = Spree::BestSellersConfiguration.new
        @preferences = [:show_best_sellers,
                        :show_best_sellers_sidebar,
                        :max_best_sellers
                        ]
      end

      def update
        config = Spree::BestSellersConfiguration.new

        params.each do |name, value|
          next unless config.has_preference? name
          config[name] = value
        end


        flash[:success] = Spree.t(:successfully_updated, resource: Spree.t('best_sellers.title'))
        redirect_to edit_admin_best_sellers_settings_path
      end
    end
  end
end
