require "raty-rails/version"
require "raty-rails/view_helpers"

module Raty
  module Rails
    class Engine < ::Rails::Engine
      initializer 'raty-rails.view_helpers' do
        ActionView::Base.send :include, ViewHelpers
      end
    end
  end
end