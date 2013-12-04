require 'test/unit'
require 'serialization-complete'

module Model
  attr_accessor :one
end

class SerializationCompleteWithAttrs < SerializationComplete
  include Model
end

class SerializationCompleteTests < Test::Unit::TestCase
  def test_serializable
    serialization = SerializationComplete.new()
    serialization.serializable_attributes :tester, :wookie
    assert_equal(serialization.attributes, {'tester' => 'nil', 'wookie' => 'nil'})
  end

  def test_existing_attributes
    serialization = SerializationCompleteWithAttrs.new()
    serialization.one = 1
    serialization.serializable_attributes :tester, :wookie
    assert_equal(serialization.attributes, {'tester' => 'nil', 'wookie' => 'nil'})
    assert_equal(serialization.one, 1) 
  end
end
