module Refinery
  module Promos
    class Promo < Refinery::Core::BaseModel
      self.table_name = 'refinery_promos'

      attr_accessible :title, :promo_image_id, :description, :promo_status, :promo_pdf_id, :start_date, :end_date, :position

      validates :title, :presence => true, :uniqueness => true

      belongs_to :promo_image, :class_name => '::Refinery::Image'

      belongs_to :promo_pdf, :class_name => '::Refinery::Resource'
    end
  end
end
