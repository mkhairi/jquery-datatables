require "jquery-datatables/version"

module Jquery
  module Datatables
    class << self
      def load!
        if rails?
          register_rails_engine
        end
      end
      
      def rails?
        defined?(::Rails)
      end
      
      private
      
      def register_rails_engine
        require 'jquery-datatables/engine'
      end
      
    end
  end
end

Jquery::Datatables.load!
