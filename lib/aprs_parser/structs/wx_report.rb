module AprsParser
  module Structs
    class WxReport < FFI::Struct
      extend AprsParser::TypeSafety

      layout :wind_gust, AprsParser::Converters::DoublePointer,
             :wind_dir, AprsParser::Converters::UintPointer,
             :wind_speed, AprsParser::Converters::DoublePointer,
             :temp, AprsParser::Converters::DoublePointer,
             :temp_in, AprsParser::Converters::DoublePointer,
             :rain_1h, AprsParser::Converters::DoublePointer,
             :rain_24h, AprsParser::Converters::DoublePointer,
             :rain_midnight, AprsParser::Converters::DoublePointer,
             :humidity, AprsParser::Converters::UintPointer,
             :humidity_h, AprsParser::Converters::UintPointer,
             :humidity_in, AprsParser::Converters::UintPointer,
             :pressure, AprsParser::Converters::DoublePointer,
             :luminosity, AprsParser::Converters::UintPointer,
             :snow_24h, AprsParser::Converters::DoublePointer,
             :soft, :string
    end
  end
end
