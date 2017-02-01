require_relative 'minitest_helper'

describe AprsParser do
  it 'test_that_it_has_a_version_number' do
    refute_nil ::AprsParser::VERSION
  end

  it 'test_it_does_something_useful' do
    assert AprsParser.hello_world
  end      
  
  it 'package' do
    pack = AprsParser.parse_aprs 'yo'
    assert_equal 'yo', pack
  end
end
