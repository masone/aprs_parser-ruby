require_relative 'minitest_helper'

describe AprsParser do
  describe 'parse' do
    it 'returns a Package' do
      parsed = AprsParser.parse('')
      assert parsed.is_a?(AprsParser::Structs::Package)
    end

    describe 'Package fields' do
      let(:location_data) { 'K4HG-8>APKRAM,TCPIP*,qAC,AE5PL-JF:/150653z4440.48N/12403.91WMiPhone' }
      let(:parsed_location) { AprsParser.parse(location_data) }

      let(:track_data) { 'N9QGS>APU25N,TCPIP*,qAC,CORE-2:@101435z/;0Q`9,?J_Z!bg001t045r000p000P000h84b10230/georgetownscottcountyweather.org {UIV32N}' } # http://www.findu.com/cgi-bin/raw.cgi?call=K4HG-8
      let(:parsed_track) { AprsParser.parse(track_data) }

      let(:message_data) { 'VMWMWW>APRS,qAS,WXSVR-AU::BOMVMW   :Cancellation of Marine Wind Warning for Wednesday for {A6eAB' } # http://aprs.fi/?c=message&call=
      let(:parsed_message) { AprsParser.parse(message_data) }

      let(:flarm_message) { 'FLRDF0A53>APRS,qAS,LSTB:/175123h4658.70N/00707.78Ez/A=001427 id02DF0A52 -019fpm +0.0rot 55.2dB 0e -11.1kHz gps3x4' }
      let(:parsed_flarm) { AprsParser.parse(flarm_message) }

      it 'extracts error_code' do
        assert_equal :fapPACKET_NO, parsed_location[:error_code]
      end

      # it 'extracts type' do
      #   assert_equal :fapLOCATION, parsed_location[:type]
      # end

      it 'extracts orig_packet_len' do
        assert_equal 67, parsed_location[:orig_packet_len]
      end

      it 'extracts body_len' do
        assert_equal 33, parsed_location[:body_len]
      end

      it 'extracts src_callsign' do
        assert_equal 'K4HG-8', parsed_location[:src_callsign]
      end

      it 'extracts dst_callsign' do
        assert_equal 'APKRAM', parsed_location[:dst_callsign]
      end

      it 'extracts path' do
        assert_equal ['TCPIP*', 'qAC', 'AE5PL-JF'], parsed_location[:path]
      end

      it 'extracts path_len' do
        assert_equal 3, parsed_location[:path_len]
      end

      it 'extracts latitude' do
        assert_equal 44.67466666666667, parsed_location[:latitude]
      end

      it 'extracts longitude' do
        assert_equal(-124.06516666666667, parsed_location[:longitude])
      end

      # it 'extracts format' do
      #   assert_equal :fapPOS_COMPRESSED, parsed_location[:format]
      # end

      it 'extracts pos_resolution' do
        assert_equal 18.520000, parsed_location[:pos_resolution]
      end

      it 'extracts pos_ambiguity' do
        assert_equal 0, parsed_location[:pos_ambiguity]
      end

      it 'extracts dao_datum_byte' do
        assert_equal 0, parsed_location[:dao_datum_byte]
      end

      it 'extracts course parsed' do
        assert_equal 228, parsed_track[:course]
      end

      it 'extracts speed' do
        assert_equal 0.0, parsed_track[:speed]
      end

      it 'extracts altitude' do
        assert_equal 434.94960000000003, parsed_flarm[:altitude]
      end

      it 'extracts gps_fix_status' do
        assert_equal 0, parsed_track[:gps_fix_status]
      end

      it 'extracts symbol_table' do
        assert_equal 47, parsed_location[:symbol_table]
      end

      it 'extracts symbol_code' do
        assert_equal 77, parsed_location[:symbol_code]
      end

      it 'extracts messaging' do
        assert_equal 0, parsed_location[:messaging]
      end

      it 'extracts destination' do
        assert_equal nil, parsed_location[:destination]
      end

      it 'extracts message' do
        assert_equal 'Cancellation of Marine Wind Warning for Wednesday for ', parsed_message[:message]
      end

      it 'extracts message_ack' do
        assert_equal nil, parsed_message[:message_ack]
      end

      it 'extracts message_nack' do
        assert_equal nil, parsed_message[:message_nack]
      end

      it 'extracts message_id' do
        assert_equal 'A6eAB', parsed_message[:message_id]
      end
      it 'extracts comment' do
        assert_equal 'iPhone', parsed_location[:comment]
      end

      it 'extracts comment_len' do
        assert_equal 6, parsed_location[:comment_len]
      end

      it 'extracts object_or_item_name' do
        assert_equal nil, parsed_location[:object_or_item_name]
      end

      it 'extracts alive' do
        assert_equal nil, parsed_location[:alive]
      end

      it 'extracts radio_range' do
        assert_equal nil, parsed_location[:radio_range]
      end

      it 'extracts phg' do
        assert_equal nil, parsed_location[:phg]
      end

      it 'extracts timestamp' do
        assert_equal 1_439_617_980, parsed_location[:timestamp]
      end

      it 'extracts nmea_checksum_ok' do
        assert_equal 13_617, parsed_location[:nmea_checksum_ok]
      end
    end
  end
end
