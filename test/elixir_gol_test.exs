defmodule ElixirGolTest do
  use ExUnit.Case
  import Mock

  doctest ElixirGol

  test "greets the world" do
    assert ElixirGol.hello() == :world
  end

  """
  test "get" do
    with_mock HTTPotion,
      [get: fn("http://example.com", _headers) ->
        HTTPotion.Response.new(status_code: 200,
          body: "hello") end] do
      # Code which calls HTTPotion.get
      # Check that the call was made as we expected
      assert called HTTPotion.get("http://example.com", :_)
    end
  end
  """
  
end
