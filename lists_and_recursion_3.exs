defmodule MyList do
  def caesar([head | tail], n) do
    _caesar(tail, head, n)
  end

  def caesar([], _), do: []

  defp _caesar(list, c, n) when c + n < ?z do
    [ c + n | caesar(list, n) ]
  end

  defp _caesar(list, c, n) when c + n > ?z do
    [ ?a + n - ?z + c - 1 | caesar(list, n) ]
  end
end

IO.inspect MyList.caesar('ryvkve', 13)

