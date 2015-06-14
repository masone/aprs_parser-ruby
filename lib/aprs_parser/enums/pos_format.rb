module AprsParser
  module Enums
    extend FFI::Library

    PosFormat = enum [:fapPOS_COMPRESSED, :fapPOS_UNCOMPRESSED, :fapPOS_MICE, :fapPOS_NMEA]
  end
end
