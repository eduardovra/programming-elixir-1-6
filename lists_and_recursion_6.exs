defmodule MyList do
  def flatten(list) do
    flatten(list, [])
  end

  defp flatten([], result) do
    result
  end

  defp flatten([head | tail], result) when is_list(head) do
    flatten(tail, result ++ flatten(head))
  end

  defp flatten([head | tail], result) do
    flatten(tail, result ++ [head])
  end
end

