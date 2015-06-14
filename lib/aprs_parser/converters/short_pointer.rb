module AprsParser
  module Converters
    class ShortPointer
      extend FFI::DataConverter
      native_type FFI::Type::POINTER

      class << self
        def from_native(value, _context)
          value.get_short(0) unless value.null?
        end

        def reference_required?
          false
        end
      end
    end
  end
end
