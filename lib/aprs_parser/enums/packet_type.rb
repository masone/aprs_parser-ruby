module AprsParser
  module Enums
    extend FFI::Library

    PacketType = enum [:fapLOCATION, :fapOBJECT, :fapITEM, :fapMICE, :fapNMEA, :fapWX, :fapMESSAGE, :fapCAPABILITIES, :fapSTATUS, :fapTELEMETRY, :fapTELEMETRY_MESSAGE, :fapDX_SPOT, :fapEXPERIMENTAL]
  end
end
