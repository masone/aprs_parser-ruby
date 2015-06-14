module AprsParser
  module Structs
    class Telemetry < FFI::Struct
      extend AprsParser::TypeSafety

      layout :seq, :uint,
             :val1, :double,
             :val2, :double,
             :val3, :double,
             :val4, :double,
             :val5, :double,
             :bits, :char
    end
  end
end
