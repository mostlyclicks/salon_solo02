module Refinery
  module Products
    class Product < Refinery::Core::BaseModel
      self.table_name = 'refinery_products'

      attr_accessible :title, :description, :prod_image_id, :position

      validates :title, :presence => true, :uniqueness => true

      belongs_to :prod_image, :class_name => '::Refinery::Image'
    end
  end
end
