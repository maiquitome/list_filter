defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call_using_enum/1" do
    test "return how many odd numbers there are in a list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = ListFilter.call_using_enum(list)

      expected_response = 3

      assert response == expected_response
    end
  end

  describe "call_using_recursivity/1" do
    test "return how many odd numbers there are in a list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = ListFilter.call_using_recursivity(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
