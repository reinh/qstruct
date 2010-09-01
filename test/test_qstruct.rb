require 'helper'

class TestQstruct < MiniTest::Unit::TestCase
  def test_query_alias
    qstruct = QueryStruct.new(:query => true)
    assert qstruct.query?
  end
end