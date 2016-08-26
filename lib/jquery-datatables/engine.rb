module Jquery
  module Datatables
    class Engine < ::Rails::Engine
      initializer 'jquery-datatables.assets.precompile' do |app|
        %w(stylesheets javascripts images).each do |sub|
          app.config.assets.paths << root.join('app/assets', sub).to_s
        end
      end
    end
  end
end
