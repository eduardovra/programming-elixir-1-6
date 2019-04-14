defmodule MyList do
  def max([head | tail]) do
    _max(head, tail)
  end

  defp _max(cur_max, []) do
    cur_max
  end

  defp _max(cur_max, [head | tail]) when head > cur_max do
    _max(head, tail)
  end

  defp _max(cur_max, [_head | tail]) do
    _max(cur_max, tail)
  end
end

