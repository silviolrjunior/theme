require 'cells'

module Theme
  class Engine < ::Rails::Engine
    isolate_namespace Theme

    Cell::Concept.view_paths << File.expand_path("#{Theme::Engine.root}/app/concepts", __FILE__)
  end
end
