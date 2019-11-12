defmodule GridTest do
  use ExUnit.Case

  @test_grid {{0, 1, 1},
              {1, 0, 1},
              {0, 1, 0}}
  
  test "neighbour count 1" do
    assert Grid.count_neighbours(@test_grid, 0, 0) == 2
    assert Grid.count_neighbours(@test_grid, 1, 0) == 3
    assert Grid.count_neighbours(@test_grid, 2, 0) == 2
    assert Grid.count_neighbours(@test_grid, 0, 1) == 2
    assert Grid.count_neighbours(@test_grid, 1, 1) == 5
    assert Grid.count_neighbours(@test_grid, 2, 1) == 3
    assert Grid.count_neighbours(@test_grid, 0, 2) == 2
    assert Grid.count_neighbours(@test_grid, 1, 2) == 2
    assert Grid.count_neighbours(@test_grid, 2, 2) == 2
  end
  
end
