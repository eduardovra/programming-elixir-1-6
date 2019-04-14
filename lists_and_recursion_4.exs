defmodule MyList do

  def span(to, to), do: [to]

  def span(from, to) do
    [ from | span(from + 1, to) ]
  end
end

IO.inspect MyList.span(1, 5)

