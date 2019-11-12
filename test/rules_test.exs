defmodule RulesTest do
  use ExUnit.Case

  test "living, <2 neighbours, dies" do
    assert Rules.is_alive(1, 1) == false
    assert Rules.is_alive(1, 0) == false
  end

  test "living, 2 or 3 neighbours, lives" do
    assert Rules.is_alive(1, 2) == true
    assert Rules.is_alive(1, 3) == true
  end

  test "living, >3 neighbours, dies" do
    assert Rules.is_alive(1, 4) == false
  end

  test "dead, 3 neighbours, lives" do
    assert Rules.is_alive(0, 3) == true
  end
  
end
