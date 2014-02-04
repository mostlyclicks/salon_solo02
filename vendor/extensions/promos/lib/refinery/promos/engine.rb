module Refinery
  module Promos
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Promos

      engine_name :refinery_promos

      initializer "register refinerycms_promos plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "promos"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.promos_admin_promos_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/promos/promo'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Promos)
      end
    end
  end
end
