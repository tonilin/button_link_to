require "button_link_to/helper"

module ButtonLinkTo
  module Rails
    class Engine < ::Rails::Engine
      initializer "button_link_to.view_helpers" do
        ActionView::Base.send :include, ButtonLinkTo::Helper
      end
    end
  end
end