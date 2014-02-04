module Refinery
  module Services
    class Service < Refinery::Core::BaseModel
      self.table_name = 'refinery_services'

      attr_accessible :title, :service_image_id, :service_excerpt, :service_description, :position

      validates :title, :presence => true, :uniqueness => true

      belongs_to :service_image, :class_name => '::Refinery::Image'
    end
  end
end
