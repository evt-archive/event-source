require_relative '../automated_init'

context "Get Types" do
  context "Many Types" do
    test "Types are the list of elements following a colon separator and preceding the ID" do
      stream_name = "someStream:someType+someOtherType"

      types = StreamName.get_types(stream_name)

      assert(types == ['someType', 'someOtherType'])
    end
  end

  context "Single Type" do
    test "Types are the list of elements following a colon separator and preceding the ID" do
      stream_name = "someStream:someType"

      types = StreamName.get_types(stream_name)

      assert(types == ['someType'])
    end
  end

  test "Is empty if there is no type list in the stream name" do
    type = StreamName.get_type('someStream')
    assert(type.nil?)
  end
end
