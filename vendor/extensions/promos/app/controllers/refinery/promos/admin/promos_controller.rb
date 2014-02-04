module Refinery
  module Promos
    module Admin
      class PromosController < ::Refinery::AdminController

        crudify :'refinery/promos/promo',
                :xhr_paging => true

      end
    end
  end
end
