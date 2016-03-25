require 'base64'

module Raty
  module Rails
    module ViewHelpers
      
      #
      # Options options are converted to data-* attributes.
      #
      # options:
      #   url: update url (defaults restful url)
      #   class: "class" attribute on element
      #   cancel: Add a cancel button on the left side of the stars to cacel the score
      #   title: "title" attribute on element (defaults to placeholder)
      #   number: Changes the number of stars.
      #   data:  "data-*" attributes on element
      #   value: override the object's value
      #
      def rating_for(object, method, options = {})
        url     = options.delete(:url){ polymorphic_path(object) }
        object  = object.last if object.kind_of?(Array)
        value   = options.delete(:value){ object.send(method) || 0 }
        model   = object.class.name.split('::').last.underscore
        html_options = options.delete(:html){ Hash.new }

        css_list = options.delete(:class).to_s.split(/\s+/).unshift('rating-for')
        css   = css_list.compact.uniq.join(' ')
        title   = options.delete(:title) do
          object.class.human_attribute_name(method)
        end
        number = options.delete(:number) { 5 }
        cancel = options.delete(:cancel) { false }

        data  = {
          model:  model,
          name:   method,
          score:  value, 
          url:    url,
          number: number,
          cancel: cancel
        }.merge(options)

        html_options.update({
          class: css,
          title: title,
          data: data
        })

        content_tag :div, nil, html_options
      end

    end
  end
end
