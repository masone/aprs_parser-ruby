module AprsParser
  module Converters
    class AprsPath
      extend FFI::DataConverter
      native_type FFI::Type::POINTER

      class << self
        # The path field is represented by an array of at least two strings
        def from_native(value, _context)
          value.get_array_of_string(0) unless value.null?
        end

        def reference_required?
          false
        end
      end
    end
  end
end
