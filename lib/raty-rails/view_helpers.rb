require 'base64'

module Raty
  module Rails
    module ViewHelpers
      #
      # Options determine how the HTML tag is rendered and the remaining options are converted to data-* attributes.
      #
      # options:
      #   tag:   tag name of element returned
      #   class: "class" attribute on element
      #   placeholder: "placeholder" attribute on element
      #   title: "title" attribute on element (defaults to placeholder)
      #   data:  "data-*" attributes on element
      #     source: a Hash of friendly display values used by input elements based on (object) value
      #       - boolean shorthand ['Enabled', 'Disabled'] becomes { '1' => 'Enabled', '0' => 'Disabled' }
      #       - enumerable shorthand ['Yes', 'No', 'Maybe'] becomes { 'Yes' => 'Yes', 'No' => 'No', 'Maybe' => 'Maybe' }
      #     classes: a Hash of classes to add based on the value (same format and shorthands as source)
      #   value: override the object's value
      #
      def raty(object, method, options = {})
        
      end

      private

      

    end
  end
end
