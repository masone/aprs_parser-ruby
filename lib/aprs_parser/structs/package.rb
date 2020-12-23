module AprsParser
  module Structs
    extend FFI::Library

    enum :pos_format, [:fapPOS_COMPRESSED, :fapPOS_UNCOMPRESSED, :fapPOS_MICE, :fapPOS_NMEA]

    class Package < FFI::Struct
      extend AprsParser::TypeSafety

      layout error_code: AprsParser::Enums::ErrorCode,
             type: AprsParser::Enums::PacketType,
             orig_packet: :string,
             orig_packet_len: :uint,
             header: :string,
             body: :pointer,
             body_len: :uint,
             src_callsign: :string,
             dst_callsign: :string,
             path: AprsParser::Converters::AprsPath,
             path_len: :uint,
             latitude: AprsParser::Converters::DoublePointer,
             longitude: AprsParser::Converters::DoublePointer,
             format: AprsParser::Enums::PosFormat,
             pos_resolution: AprsParser::Converters::DoublePointer,
             pos_ambiguity: AprsParser::Converters::UintPointer,
             dao_datum_byte: :char,
             altitude: AprsParser::Converters::DoublePointer,
             course: AprsParser::Converters::UintPointer,
             speed: AprsParser::Converters::DoublePointer,
             symbol_table: :char,
             symbol_code: :char,
             messaging: :pointer, #AprsParser::Converters::ShortPointer, 
             destination: :string,
             message: :string,
             message_ack: :string,
             message_nack: :string,
             message_id: :string,
             comment: :string,
             comment_len: :uint,
             object_or_item_name: :string,
             alive: AprsParser::Converters::ShortPointer,
             gps_fix_status: AprsParser::Converters::ShortPointer,
             radio_range: AprsParser::Converters::UintPointer,
             phg: :string,
             timestamp: AprsParser::Converters::Timestamp,
             nmea_checksum_ok: AprsParser::Converters::ShortPointer,
             messagebits: :char,
             status: :char,
             status_len: :uint,
             capabilities: :char,
             capabilities_len: :uint
    end
  end
end
