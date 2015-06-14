require 'ffi'
require 'aprs_parser/version'
require 'aprs_parser/type_safety'
require 'aprs_parser/converters'
require 'aprs_parser/enums'
require 'aprs_parser/structs'

module AprsParser
  extend FFI::Library
  ffi_lib 'fap'

  attach_function :fap_init, [], :void
  attach_function :fap_cleanup, [], :void
  attach_function :fap_parse, :fap_parseaprs, [:string, :uint, :bool], AprsParser::Structs::Package.ptr

  def self.parse(message)
    AprsParser.fap_init
    begin
      AprsParser.fap_parse(message, message.bytesize, false)
    ensure
      AprsParser.fap_cleanup
    end
  end
end
