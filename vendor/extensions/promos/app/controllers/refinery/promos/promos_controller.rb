module Refinery
  module Promos
    class PromosController < ::ApplicationController

      before_filter :find_all_promos
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @promo in the line below:
        present(@page)
      end

      def show
        @promo = Promo.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @promo in the line below:
        present(@page)
      end

    protected

      def find_all_promos
        @promos = Promo.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/promos").first
      end

    end
  end
end
