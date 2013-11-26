require 'test/unit'
require_relative '../lib/serialization-complete.rb'

class SerializationCompleteTests < Test::Unit::TestCase


  def test_serializable()
    serialization = SerializationComplete.new()
    serialization.serializable_attributes :tester, :wookie
    assert_equal(serialization.attributes, {'tester' => 'nil', 'wookie' => 'nil'})
  end

end
