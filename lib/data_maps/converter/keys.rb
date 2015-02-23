module DataMaps
  module Converter
    # Converts numeric values
    #
    # @since 0.0.1
    class Keys < Base
      # The after initialize callback
      def after_initialize
        @option = option.with_indifferent_access
      end

      # The apply method to convert the keys of given data
      #
      # @param [mixed] data
      def apply(data)
        case
          when Hash then Hash[data.map{ |k,v| [option[k] || k, v] }]
          else data
        end
      end
    end
  end
end
