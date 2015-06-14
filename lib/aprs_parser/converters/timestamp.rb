module AprsParser
  module Converters
    class Timestamp
      extend FFI::DataConverter
      native_type FFI::Type::POINTER

      class << self
        def from_native(value, _context)
          value.get_int(0) unless value.null?
        end

        def reference_required?
          false
        end
      end
    end
  end
end
