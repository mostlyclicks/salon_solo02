class CreatePromosPromos < ActiveRecord::Migration

  def up
    create_table :refinery_promos do |t|
      t.string :title
      t.integer :promo_image_id
      t.text :description
      t.string :promo_status
      t.integer :promo_pdf_id
      t.date :start_date
      t.date :end_date
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-promos"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/promos/promos"})
    end

    drop_table :refinery_promos

  end

end
