module ViewModel
  class Railtie < ::Rails::Railtie
    config.after_initialize do
      ActiveSupport.on_load(:action_controller) do
        ActionController::Base.prepend(ViewModel::Patch)
      end
    end
  end
end
