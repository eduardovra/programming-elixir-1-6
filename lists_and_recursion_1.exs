defmodule MyList do
  def mapsum(list, value \\ 0, func)

  def mapsum([], value, _func) do
    value
  end

  def mapsum([head | tail], value, func) do
    mapsum(tail, func.(head) + value, func)
  end
end

