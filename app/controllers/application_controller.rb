class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :list_active_promos
  before_filter :list_services_excerpts
  before_filter :list_product_brands

  protected

    def list_active_promos
      @promos = (Refinery::Promos::Promo.where promo_status: "1").limit(2)
    end

    def list_services_excerpts
      @services = (Refinery::Services::Service).all
    end

    def list_product_brands
      @products = (Refinery::Products::Product).all
    end

end
