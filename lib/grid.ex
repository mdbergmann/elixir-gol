defmodule Grid do

  def count_neighbours(grid, col, row)
  when col >= 0 and row >= 0 do
    Enum.reduce([
      get_field(grid, col-1, row-1),
      get_field(grid, col-1, row),
      get_field(grid, col-1, row+1),
      get_field(grid, col, row-1),
      get_field(grid, col, row+1),
      get_field(grid, col+1, row-1),
      get_field(grid, col+1, row),
      get_field(grid, col+1, row+1)
    ], &(&1 + &2))
  end

  defp get_field(_grid, _col = -1, _row), do: 0
  defp get_field(_grid, _col, _row = -1), do: 0
  defp get_field(grid, col, _row) when col >= tuple_size(grid), do: 0
  defp get_field(grid, _col, row) when row >= tuple_size(grid), do: 0
  defp get_field(grid, col, row) do
    elem(grid, row) |> elem(col)
  end
  
end
