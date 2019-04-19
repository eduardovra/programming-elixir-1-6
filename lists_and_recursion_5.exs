defmodule MyEnum do
  def all?([], _) do
    true
  end

  def all?([head | tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end

  def each([], _) do
    :ok
  end

  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end

  defp filter([], _, list) do
    list
  end

  defp filter([head | tail], func, list) do
    if func.(head) do
      filter(tail, func, [head | list])
    else
      filter(tail, func, list)
    end
  end

  def filter(list, func) do
    filter(list, func, [])
  end

  defp split(list_a, 0, list_b) do
    {list_a, list_b}
  end

  defp split(list_a, _, []) do
    {list_a, []}
  end

  defp split(list, count, [head | tail]) do
    split(list ++ [head], count - 1, tail)
  end

  def split(list, count) when count >= 0 do
    split([], count, list)
  end

  def split(list, count) when abs(count) < length(list) do
    split(list, count + length(list))
  end

  def split(list, _) do
    split(list, 0)
  end

  defp skip(list, 0) do
    list
  end

  defp skip([_ | tail], amount) do
    skip(tail, amount - 1)
  end

  def take(list, amount) when amount < 0 and abs(amount) >= length(list) do
    take(list, length(list))
  end

  def take(list, amount) when amount < 0 do
    skip(list, length(list) + amount)
  end

  def take(list, amount) do
    take(list, amount, [])
  end

  defp take([], _, list) do
    list
  end

  defp take(_, 0, list) do
    list
  end

  defp take([head | tail], amount, list) do
    take(tail, amount - 1, list ++ [head])
  end
end

