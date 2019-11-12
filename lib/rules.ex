defmodule Rules do

  def is_alive(_state = 1, neighbours) do
    cond do
      neighbours < 2 -> false
      neighbours == 2 -> true
      neighbours == 3 -> true
      neighbours > 3 -> false
    end
  end

  def is_alive(_state = 0, _neighbours = 3), do: true

end
