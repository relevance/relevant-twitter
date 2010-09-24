require "tilt"

module Relevant
  module Widget
    
    def self.included(base)
      base.send :include, InstanceMethods
      base.extend ClassMethods
    end
    
    module InstanceMethods
      def initialize(options = {})
        @options = options
      end
      
      def to_html
        return unless self.class.template

        template_handler = Tilt[self.class.template_format].new { self.class.template.strip }
        template_handler.render(self)
      end
    end
    
    module ClassMethods
      def available_options(options = nil)
        options.nil? ? @available_options : (@available_options = options)
      end

      def template_format(format = nil)
        format.nil? ? @template_format : (@template_format = format)
      end

      def template(data = nil)
        data.nil? ? @template : (@template = data)
      end

      def refresh_every(seconds = nil)
        seconds.nil? ? @refresh_every : (@refresh_every = seconds)
      end      
    end
    
  end
end